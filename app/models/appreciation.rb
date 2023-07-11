class Appreciation < ApplicationRecord
  belongs_to :user
  belongs_to :art
  has_many :like_appreciations
end
