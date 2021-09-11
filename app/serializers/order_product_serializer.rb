class OrderProductSerializer < ActiveModel::Serializer
  attributes :id, :product_qty
  has_one :order
  has_one :product
end
