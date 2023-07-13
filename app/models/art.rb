class Art < ApplicationRecord
  belongs_to :user
  has_one_attached :image
  
  has_many :explanations
  has_many :appreciations
  has_many :donations

  has_many :explanations, dependent: :destroy
  has_many :appreciations, dependent: :destroy
  has_many :likes
  
  validates :title, presence: true
  validates :description, presence: true
  validates :year, presence: true
  validates :category, presence: true

  validates :description, length: { maximum: 1000 }

end
