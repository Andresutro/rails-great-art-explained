class Art < ApplicationRecord
  belongs_to :user
  has_one_attached :image
  has_many :explanations

end
