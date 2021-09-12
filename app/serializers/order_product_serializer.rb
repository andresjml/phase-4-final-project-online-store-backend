class OrderProductSerializer < ActiveModel::Serializer
  attributes :id, :product_qty, :order_id, :product
  #has_one :order  
  #has_one :product
end
