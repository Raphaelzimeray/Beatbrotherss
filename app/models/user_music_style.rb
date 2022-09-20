class UserMusicStyle < ApplicationRecord
  belongs_to :music_style
  belongs_to :user
end
