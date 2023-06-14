class Area < ApplicationRecord
    enum area_type: { Ingreso: 0, Gasto: 1 }
    has_many :bills
end
