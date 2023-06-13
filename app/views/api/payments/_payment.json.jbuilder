json.extract! payment, :id, :bill_ref, :date_created, :amount, :voucher, :created_at, :updated_at
json.url payment_url(payment, format: :json)
