json.payment do
    json.id @payment.id    
    json.bill_ref @payment.bill_ref
    json.date_created @payment.date_created
    json.amount @payment.amount
    json.voucher @payment.voucher

end
