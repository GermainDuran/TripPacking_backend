class User < ApplicationRecord
  #has_many :belongings
  has_many :trips
  has_many :suitcases, through: :trips
end
