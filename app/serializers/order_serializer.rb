class OrderSerializer < ActiveModel::Serializer
  attributes :id, :user_id, :paid, :order_products, :products
  #has_one :user  
end
