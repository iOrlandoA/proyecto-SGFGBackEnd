class Bill < ApplicationRecord
    has_many :payments, dependent: :destroy
    belongs_to :area

    validates :name, presence: true, length: { maximum: 200 }
    validates :bill_ref, presence: true
    validates :price, presence: true, numericality: { greater_than_or_equal_to: 0 }
    validates :description, length: { maximum: 1000 }, allow_nil: true    
    validates :date_created, presence: true, length: { maximum: 12 }
    validates :date_expired, length: { maximum: 12 }, allow_nil: true


end
