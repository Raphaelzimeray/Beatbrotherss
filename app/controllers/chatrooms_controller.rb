class ChatroomsController < ApplicationController
  def show
    @chatroom = Chatroom.find_by(id: params[:id])
    @message = Message.new
  end

  def index
    @chatrooms = current_user.chatrooms
  end
end
