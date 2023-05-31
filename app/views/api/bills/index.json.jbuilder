json.array! @bills do |bill|
  json.id bill.id
  json.name bill.name
  json.price bill.price
  json.billtype bill.billtype
  json.description bill.description
  json.startdate bill.startdate
  json.finishdate bill.finishdate
end

