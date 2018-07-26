class Comment < ApplicationRecord
  has_one :user
  has_one :gossip
  has_many :likes
end
