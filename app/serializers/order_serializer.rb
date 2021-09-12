class OrderSerializer < ActiveModel::Serializer
  attributes :id, :user_id, :paid?, :order_products
  #has_one :user  
end
