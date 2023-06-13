class Area < ApplicationRecord
    enum area_type: { ingreso: 0, gasto: 1 }
end
