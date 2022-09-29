class MusicStyle < ApplicationRecord
  has_many :user_music_styles, dependent: :destroy
  has_many :users, through: :user_music_styles, dependent: :destroy
end
