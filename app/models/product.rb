class Product < ApplicationRecord
  belongs_to :category
  has_many :order_products, dependent: :destroy
  has_many :orders, through: :order_products
  validates :name, presence: true, uniqueness: true
  validates :price, presence: true
  validates :on_hand, presence: true
end
