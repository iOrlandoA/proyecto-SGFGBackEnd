module Api

    class BillsController < ApplicationController
      skip_before_action :verify_authenticity_token
      before_action :set_bill, only: %i[ show edit update destroy ]
    
      def index
        query = Bill.includes(:area).all
    
        if params[:bill_ref].present?
          query = query.where(bill_ref: params[:bill_ref])
        end
    
        if params[:start_date].present? && params[:end_date].present?
          query = query.where("date_created >= ? AND date_expired <= ?", params[:start_date], params[:end_date])
        end
    
        @bills = query
        render json: @bills.to_json(include: :area)
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
          params.require(:bill).permit(:name, :price, :description, :date_created, :date_expired, :bill_ref, :area_id)
        end
    end
    end