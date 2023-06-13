module Api
    class PaymentsController < ApplicationController
      skip_before_action :verify_authenticity_token
      before_action :set_payment, only: %i[show edit update destroy]
  
      def index
        @payments = Payment.all
      end
  
      def show; end
  
      def new
        @payment = Payment.new
      end
  
      def edit; end
  
      def create
        @payment = Payment.new(payment_params)
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
        params.require(:payment).permit(:bill_ref, :date_created, :amount, :voucher)
      end
    end
  end