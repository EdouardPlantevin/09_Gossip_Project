class Gossip < ApplicationRecord
  has_one :user
  belongs_to :user
  has_many :tags
  has_many :comments
  has_many :likes
end
