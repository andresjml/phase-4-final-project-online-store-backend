class OrderProduct < ApplicationRecord
  belongs_to :order
  belongs_to :product
  validates :product_qty, presence: true
end
