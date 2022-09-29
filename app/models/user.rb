class User < ApplicationRecord
  has_many :user_instruments, dependent: :destroy
  has_many :instruments, through: :user_instruments
  has_many :user_music_styles, dependent: :destroy
  has_many :music_styles, through: :user_music_styles
  has_many :user_songs, dependent: :destroy
  has_many :messages, dependent: :destroy
  has_many :chatrooms, through: :messages
  has_many_attached :photos
  has_many :user_chatrooms, dependent: :destroy
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  acts_as_favoritor
  acts_as_favoritable

  def already_in_chatroom?(user, current_user)
    user.user_chatrooms.joins(:chatroom).where(chatroom: current_user.chatrooms).exists?
  end

  def common_chatroom(user, current_user)
    user.user_chatrooms.joins(:chatroom).where(chatroom: current_user.chatrooms).uniq.first.chatroom_id
  end
end
