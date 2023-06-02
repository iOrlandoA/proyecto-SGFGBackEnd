module Api

    class BillsController < ApplicationController
      skip_before_action :verify_authenticity_token
      before_action :set_bill, only: %i[ show edit update destroy ]
    
      def index
        @bills = Bill.all
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