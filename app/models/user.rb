class User < ApplicationRecord
  has_one :city
  has_many :gossips
end
