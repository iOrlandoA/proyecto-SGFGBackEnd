json.array! @payments do |payment|
  json.id payment.id
  json.date_created payment.date_created
  json.amount payment.amount
  json.voucher payment.voucher
  json.bill_id payment.bill_id
end