class Product < ApplicationRecord
  belongs_to :category
  has_many :cart_products, dependent: :destroy
  validates :name, presence: true, uniqueness: true
  validates :price, presence: true
  validates :on_hand, presence: true
end
