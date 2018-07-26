class PrivateMessage < ApplicationRecord
  has_one :user
  has_many :users
end
