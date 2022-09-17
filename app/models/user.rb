class User < ApplicationRecord
  has_many :user_instruments
  has_many :user_songs
  has_many :chatrooms, through: :messages
  has_many :messages
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  acts_as_favoritor
  acts_as_favoritable
end
