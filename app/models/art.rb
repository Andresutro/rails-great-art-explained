class Art < ApplicationRecord
  belongs_to :user
  has_one_attached :image
  has_many :explanations, dependent: :destroy
  has_many :appreciations, dependent: :destroy

  validates :title, presence: true
  validates :description, presence: true
  validates :year, presence: true
  validates :category, presence: true

  validates :description, length: { maximum: 1000 }


end
