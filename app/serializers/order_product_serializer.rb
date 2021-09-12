class OrderProductSerializer < ActiveModel::Serializer
  attributes :id, :product_qty, :order_id, :product_id
  has_one :order
  has_one :product
end
