class UserSerializer < ActiveModel::Serializer
  attributes :id, :name, :username, :email

  has_many :trips
  has_many :suitcases, through: :trips
end
