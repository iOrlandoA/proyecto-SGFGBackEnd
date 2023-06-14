class Payment < ApplicationRecord
    belongs_to :bill, foreign_key: 'bill_ref'

    validates :date_created, presence: true, length: { maximum: 12 }
    validates :voucher, presence: true
    validates :amount, presence: true, numericality: { greater_than_or_equal_to: 0 }
end
