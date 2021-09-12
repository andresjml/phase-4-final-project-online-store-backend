class ProductSerializer < ActiveModel::Serializer
  attributes :id, :name, :description, :price, :on_hand, :img_url, :category_id
  has_one :category
end
