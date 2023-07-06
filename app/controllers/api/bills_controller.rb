module Api

    class BillsController < ApplicationController
      skip_before_action :verify_authenticity_token
      before_action :set_bill, only: %i[ show edit update destroy ]

      def sumbills_by_type
        start_date = params[:start_date]
        end_date = params[:end_date]
  
        ingreso_price = calculate_total_price(start_date, end_date, area_type: 0)
        gasto_price = calculate_total_price(start_date, end_date, area_type: 1)
  
        result = {
          ingreso_price: ingreso_price,
          gasto_price: gasto_price
        }
  
        render json: result
      end
  
      def calculate_total_price(start_date, end_date, area_type:)
        query = Bill.includes(:area).where(date_created: start_date..end_date)
        query.joins(:area).where(areas: { area_type: area_type }).sum(:price)
      end
    
      def index
        query = Bill.includes(:area).all
    
        if params[:bill_ref].present?
          query = query.where(bill_ref: params[:bill_ref])
        end
    
        if params[:start_date].present? && params[:end_date].present?
          query = query.where("date_created >= ? AND date_created <= ?", params[:start_date], params[:end_date])
        end
    
        @bills = query
        render json: @bills.to_json(include: :area)
      end

      def date_area_filter
        start_date = params[:start_date]
        end_date = params[:end_date]
        area_id = params[:area_id].to_i # Assuming the area ID is passed as a parameter
      
        query = Bill.includes(:area).where(date_created: start_date..end_date, areas: { id: area_id })
      
        render json: query, include: :area
      end

      def is_paid
        start_date = params[:start_date]
        end_date = params[:end_date]
        area_type = params[:area_type].to_i
      
        query = Bill.includes(:area).where(date_expired: start_date..end_date, areas: { area_type: area_type }, full_paid: false)
      
        render json: query, include: :area
      end
       

      def show
        @bill = Bill.includes(:payments, :area).find_by(id: params[:id])
        render 'api/bills/show', status: :ok
      end
      
    
      def new
        @bill = Bill.new
      end
    
      def edit; end
    
      def create
        @bill = Bill.new(bill_params)
        @bill.area = Area.find(params[:bill][:area_id])
        if @bill.save
          render 'api/bills/show', status: :created
        else
          render json: @bill.errors, status: :unprocessable_entity
        end
      end
    
      def update
        if @bill.update(bill_params)
          render 'api/bills/show', status: :ok
        else
          render json: @bill.errors, status: :unprocessable_entity
        end
      end
    
      def destroy
        @bill.destroy
        render 'api/bills/show', status: :ok
      end
    
      private
      def set_bill
        @bill = Bill.includes(:area).find_by!(id: params[:id])
        unless @bill
          render json: { error: "Bill not found" }, status: :not_found
        end
      end
    
        def bill_params
          params.require(:bill).permit(:name, :price, :description, :date_created, :date_expired, :bill_ref, :area_id, :full_paid)
        end
    end
    end