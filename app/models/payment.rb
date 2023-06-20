class Payment < ApplicationRecord
    belongs_to :bill

    validates :date_created, presence: true, length: { maximum: 12 }
    validates :voucher, presence: true
    validates :amount, presence: true, numericality: { greater_than_or_equal_to: 0 }
    validates :bill_id, presence: true
end
