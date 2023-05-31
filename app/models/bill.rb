class Bill < ApplicationRecord
    enum billtype: { transporte: 0, alimentos: 1, animal: 2 }
end
