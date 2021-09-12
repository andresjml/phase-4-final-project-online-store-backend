class User < ApplicationRecord
    has_many :orders, dependent: :destroy
    validates :username, presence: true, uniqueness:true
    validates :address, presence:true
    validates :phone, presence: true, length: {maximum: 12}
    validates :first_name, presence: true
    validates :last_name, presence: true
end
