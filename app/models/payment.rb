class Payment < ApplicationRecord
    belongs_to :bill, foreign_key: 'bill_ref'
end
