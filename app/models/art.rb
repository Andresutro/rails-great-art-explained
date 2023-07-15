class Art < ApplicationRecord
  belongs_to :user

  has_one_attached :photo
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

  #validates :description, length: { maximum: 1000 }

  def self.with_most_likes
    self.joins(:likes)
        .group('arts.id')
        .order('COUNT(likes.id) DESC')
        .select('arts.*, COUNT(likes.id) as likes_count')
        .limit(6)
  end

  def self.with_least_likes
    self.joins(:likes)
        .group('arts.id')
        .order('COUNT(likes.id) ASC')
        .select('arts.*, COUNT(likes.id) as likes_count')
        .limit(6)
  end
end
