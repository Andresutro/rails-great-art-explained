class Explanation < ApplicationRecord
  has_one_attached :image
  belongs_to :art

  validates :image, presence: true, unless: -> { image.attached? }
end
