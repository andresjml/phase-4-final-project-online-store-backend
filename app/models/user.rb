class User < ApplicationRecord
    has_many :orders, dependent: :destroy
    has_many :order_products, through: orders
    validates :username, presence: true, uniqueness:true
    validates :address, presence:true
    validates :phone, presence: true, length: {maximum: 13}
    validates :first_name, presence: true
    validates :last_name, presence: true
end
