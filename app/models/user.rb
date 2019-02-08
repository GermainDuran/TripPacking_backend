class User < ApplicationRecord
  has_secure_password
  validates :username, uniqueness: { case_sensitive: false }

  has_many :trips
  has_many :suitcases, through: :trips
end
