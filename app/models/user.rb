class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  has_many :donations
  has_many :appreciations
  has_many :arts
  has_many :likes
  has_one_attached :photo
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  has_many :like_appreciations

  # validates :first_name,  length: { maximum: 30 }
  # validates :last_name,  length: { maximum: 30 }
end
