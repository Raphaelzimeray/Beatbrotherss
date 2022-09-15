class ChatroomsController < ApplicationController
  def show
    @chatroom = Chatroom.find_by(id: params[:slug])
    @message = Message.new
  end

  def index
    @chatrooms = current_user.chatrooms
  end

  private

  def params_chatroom
    params.require(:chatroom).permit(:slug)
  end
end
