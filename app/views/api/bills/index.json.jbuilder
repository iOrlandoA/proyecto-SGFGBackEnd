json.array! @bills do |bill|
  json.id bill.id
  json.name bill.name
  json.price bill.price
  json.description bill.description
  json.area bill.area
  json.date_created bill.date_created
  json.date_expired bill.date_expired
  json.bill_ref bill.bill_ref
  json.payments bill.payments, partial: 'api/payments/payment', as: :payment
end
