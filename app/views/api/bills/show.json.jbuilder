json.bill do
    json.id @bill.id
    json.name @bill.name
    json.price @bill.price
    json.description @bill.description
    json.date_created @bill.date_created
    json.date_expired @bill.date_expired
    json.bill_ref @bill.bill_ref
    json.visible @bill.visible
    json.area do
      json.extract! @bill.area, :id, :area_type, :name
    end
    json.payments @bill.payments, partial: 'api/payments/payment', as: :payment
  end
  