class UserSerializer < ActiveModel::Serializer
  attributes :id, :username, :address, :phone, :first_name, :last_name
end
