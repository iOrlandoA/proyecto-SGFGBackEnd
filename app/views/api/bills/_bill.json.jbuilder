json.extract! bill, :id, :name, :price, :description, :area, :date_created, :date_expired, :bill_ref, :created_at, :updated_at
json.url bill_url(bill, format: :json)
json.payments bill.payments, partial: 'api/payments/payment', as: :payment
