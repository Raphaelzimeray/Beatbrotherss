class UserMusicStyle < ApplicationRecord
  belongs_to :music_style, dependent: :destroy
  belongs_to :user
end
