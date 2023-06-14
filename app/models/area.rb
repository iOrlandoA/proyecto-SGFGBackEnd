class Area < ApplicationRecord
    enum area_type: { Ingreso: 0, Gasto: 1 }
    has_many :bills

    validates :name, presence: true, length: { maximum: 200 }
    validates :area_type, presence: true
end
