class ChatroomsController < ApplicationController
  def show
    @body_class = 'chatroom-background'
    @chatroom = Chatroom.find_by(id: params[:id])
    @message = Message.new
  end

  def index
    @body_class = 'chatroom-background'
    @user_chatrooms = current_user.user_chatrooms.uniq
  end
end
