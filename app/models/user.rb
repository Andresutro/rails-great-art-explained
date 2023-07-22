require 'open-uri'

class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  attr_accessor :username
  has_many :donations
  has_many :appreciations
  has_many :arts
  has_many :likes
  has_many :received_donations, class_name: 'Donation', foreign_key: 'recipient_id'


  ## si es el que crea el tour
  has_many :tours
  # si es que un usuario participa de un tour
  has_many :participants

  has_one_attached :photo

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  has_many :like_appreciations

  def participant_in(tour)
    participants.find_by(tour: tour)
  end
  # validates :first_name,  length: { maximum: 30 }
  # validates :last_name,  length: { maximum: 30 }

  after_initialize :set_default_photo, if: :new_record?

  def set_default_photo
    unless photo.attached?
      a = URI.open('https://res.cloudinary.com/dygidrhdn/image/upload/v1689723319/default_photo_ax0gek.jpg')
      photo.attach(io: a, filename: "default.jpg", content_type: "image/jpg")
    end
  end
end
