class ChatroomsController < ApplicationController
  def show
    @body_class = 'chatroom-background'
    @chatroom = Chatroom.find_by(id: params[:id])
    @message = Message.new
  end

  def index
    @body_class = 'chatroom-background'
    @chatrooms = current_user.chatrooms.uniq
  end
end
