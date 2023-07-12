class Art < ApplicationRecord
  belongs_to :user
  has_one_attached :image
  has_many :explanations
  has_many :appreciations
  has_many :donations
end
