class Bill < ApplicationRecord
    has_many :payments, foreign_key: 'bill_ref'
end
