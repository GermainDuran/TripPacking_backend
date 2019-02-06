class TripSerializer < ActiveModel::Serializer
  attributes :id, :name, :date, :user_id
  belongs_to :user
  has_many :suitcases
end
