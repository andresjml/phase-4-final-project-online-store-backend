class Product < ApplicationRecord
  belongs_to :category
  validates :name, presence: true, uniqueness: true
  validates :price, presence: true
  validates :on_hand, presence: true
end
