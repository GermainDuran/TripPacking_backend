class UserSerializer < ActiveModel::Serializer
  attributes :id, :name, :username, :email, :password_digest
  has_many :trips
#  has_many :belongings
  has_many :suitcases, through: :trips
end
