json.extract! payment, :id, :date_created, :amount, :voucher, :bill_id, :created_at, :updated_at
json.url payment_url(payment, format: :json)
