module Api

    class BillsController < ApplicationController
      before_action :set_bill, only: %i[ show edit update destroy ]
      before_action :authenticate_user!
    
      def index
        query = Bill.all
    
        if params[:voucher].present?
          query = query.where(voucher: params[:voucher])
        end
    
        if params[:start_date].present? && params[:end_date].present?
          query = query.where("date_created >= ? AND date_expired <= ?", params[:start_date], params[:end_date])
        end
    
        @bills = query
        render json: @bills
      end
      
    
      def show; end
    
      def new
        @bill = Bill.new
      end
    
      def edit; end
    
      def create
        @bill = Bill.new(bill_params)
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
          @bill = Bill.find(params[:id])
        end
    
        def bill_params
          params.require(:bill).permit(:name, :price, :description, :area, :date_created, :date_expired, :voucher)
        end
    end
    end