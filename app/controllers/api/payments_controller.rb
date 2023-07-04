module Api
    class PaymentsController < ApplicationController
      skip_before_action :verify_authenticity_token
      before_action :set_payment, only: %i[show edit update destroy]
  
      def index
        query = Payment.all
  
        if params[:start_date].present? && params[:end_date].present?
          query = query.where("date_created >= ? AND date_created <= ?", params[:start_date], params[:end_date])
        end
  
        @payments = query
        render json: @payments
      end
  
      def show 
        @bill = Bill.find_by(id: @payment.bill_id)
      end
  
      def new
        @payment = Payment.new
      end
  
      def edit; end
  
      def create
        @payment = Payment.new(payment_params)
        @payment.date_created = Date.today
        if @payment.save
          render 'api/payments/show', status: :created
        else
          render json: @payment.errors, status: :unprocessable_entity
        end
      end
  
      def update
        if @payment.update(payment_params)
          render 'api/payments/show', status: :ok
        else
          render json: @payment.errors, status: :unprocessable_entity
        end
      end
  
      def destroy
        @payment.destroy
        render 'api/payments/show', status: :ok
      end
  
      private
  
      def set_payment
        @payment = Payment.find(params[:id])
      end
  
      def payment_params
        params.require(:payment).permit(:amount, :voucher, :bill_id)
      end
    end
  end