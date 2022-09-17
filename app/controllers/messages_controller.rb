class MessagesController < ApplicationController

  def create
    @message = Message.new(message_params)
    @message.user = current_user
    if @message.save
      redirect_to user_chatroom_path(current_user, @message.chatroom, anchor: "message-#{@message.id}")
    else
      render "chatrooms/show"
    end
  end

  private

  def message_params
    params.require(:message).permit(:content, :chatroom_id)
  end
end

