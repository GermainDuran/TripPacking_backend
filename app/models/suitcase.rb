class Suitcase < ApplicationRecord
  belongs_to :trip
  has_many :belongings
end
