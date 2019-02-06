class BelongingSerializer < ActiveModel::Serializer
  attributes :id, :name, :image,:suitcase_id
#  belongs_to :user
  belongs_to :suitcase
end
