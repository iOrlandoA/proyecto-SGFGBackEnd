Area.create(area_type: "Gasto", name: "- Obra en estabulado nuevo Sota")
Area.create(area_type: "Gasto", name: "- Compra Ganado")
Area.create(area_type: "Gasto", name: "- Servicio Transporte")
Area.create(area_type: "Gasto", name: "- Compra Alimento")
Area.create(area_type: "Gasto", name: "- Comisiones compra Ganado")
Area.create(area_type: "Gasto", name: "- Compra Combustible")
Area.create(area_type: "Gasto", name: "- Compra Piña")
Area.create(area_type: "Gasto", name: "- Mantenimiento ó Reparación")
Area.create(area_type: "Gasto", name: "- Compra Repuestos")
Area.create(area_type: "Gasto", name: "- Compra Yuca")
Area.create(area_type: "Gasto", name: "- Articulos de Limpieza")
Area.create(area_type: "Gasto", name: "- Articulos de Oficina")
Area.create(area_type: "Gasto", name: "- Material P/Cerca")
Area.create(area_type: "Gasto", name: "- Medicamentos")
Area.create(area_type: "Gasto", name: "- Compra corona")
Area.create(area_type: "Gasto", name: "- Compra Boyas")
Area.create(area_type: "Gasto", name: "- Compra Refrigerios")
Area.create(area_type: "Gasto", name: "- Servicio Torno")
Area.create(area_type: "Gasto", name: "- Talonario Guías")
Area.create(area_type: "Gasto", name: "- Compra Pollinaza")
Area.create(area_type: "Gasto", name: "- Compra Mangueras y Accesorios")
Area.create(area_type: "Gasto", name: "- Rebajo Pago Anticipado")
Area.create(area_type: "Gasto", name: "- Compra Agroquimicos")
Area.create(area_type: "Gasto", name: "- Compra Sal/Miel")
Area.create(area_type: "Gasto", name: "- Ley CORFOGA")
Area.create(area_type: "Gasto", name: "- Cuenta por Pagar")
Area.create(area_type: "Gasto", name: "- Documento por Pagar")

Area.create(area_type: "Ingreso", name: "- Venta Ganado")
Area.create(area_type: "Ingreso", name: "- Intereses")

Bill.create(name: "BillPrueba1", price: "555.30", description: "descripcion1", date_created: "2023-02-03", date_expired: "2023-03-04", bill_ref: "888", area_id: "1")
Bill.create(name: "BillPrueba2", price: "444.30", description: "descripcion2", date_created: "2023-05-06", date_expired: "2023-07-08", bill_ref: "999", area_id: "2")


#Payment.create(amount: 50.5, voucher: 852, bill: bill1)
#Payment.create(amount: 60.7, voucher: 741, bill: bill1)
#Payment.create(amount: 69.32, voucher: 963, bill: bill2)
#Payment.create(amount: 40.5, voucher: 258, bill: bill2)
