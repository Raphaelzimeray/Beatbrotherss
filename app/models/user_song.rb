class UserSong < ApplicationRecord
  belongs_to :user
  has_one_attached :url
end
