class Art < ApplicationRecord
  belongs_to :user
  has_one_attached :photo
  has_many :explanations
  has_many :appreciations
end
