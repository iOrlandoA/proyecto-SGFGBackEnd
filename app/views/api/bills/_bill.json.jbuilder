json.extract! bill, :id, :name, :price, :billtype, :description, :startdate, :finishdate, :created_at, :updated_at
json.url bill_url(bill, format: :json)