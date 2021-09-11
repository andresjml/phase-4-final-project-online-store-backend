class ProductSerializer < ActiveModel::Serializer
  attributes :id, :name, :description, :price, :on_hand, :img_url
  has_one :category
end
