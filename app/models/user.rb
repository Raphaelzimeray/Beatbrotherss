class User < ApplicationRecord
  has_many :user_instruments
  has_many :instruments, through: :user_instruments
  has_many :user_music_styles, dependent: :destroy
  has_many :music_styles, through: :user_music_styles
  has_many :user_songs
  has_many :messages
  has_many :chatrooms, through: :messages
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  acts_as_favoritor
  acts_as_favoritable

end
