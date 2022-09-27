class Chatroom < ApplicationRecord
  has_many :messages, dependent: :destroy
  has_many :user_chatrooms, dependent: :destroy

  def chatroom_buddy(current_user)
    id =  user_chatrooms.pluck(:user_id).uniq.reject { |n| n == current_user.id } 
    User.find(id.first)  # OU id.map { |i| User.find(i) }[0]
  end

end
