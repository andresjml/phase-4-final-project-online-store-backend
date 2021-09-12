class OrderSerializer < ActiveModel::Serializer
  attributes :id, :user_id, :paid?
  has_one :user  
end
