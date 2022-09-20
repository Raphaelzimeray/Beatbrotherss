class Chatroom < ApplicationRecord
  has_many :messages

  def chatroom_buddy(current_user)
    id = messages.pluck(:user_id).uniq.reject { |n| n == current_user.id }
    User.find(id.first)  # OU id.map { |i| User.find(i) }[0]
  end

end
