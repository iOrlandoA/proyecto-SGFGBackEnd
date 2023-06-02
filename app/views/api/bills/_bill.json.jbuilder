json.extract! bill, :id, :name, :price, :description, :area, :date_created, :date_expired, :voucher, :created_at, :updated_at
json.url bill_url(bill, format: :json)