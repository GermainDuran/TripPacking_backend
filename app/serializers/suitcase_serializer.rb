class SuitcaseSerializer < ActiveModel::Serializer
  attributes :id, :name, :category, :trip_id
  belongs_to :trip
  has_many :belongings
end
