class OrderSerializer < ActiveModel::Serializer
  attributes :id, :paid?
  has_one :user
end
