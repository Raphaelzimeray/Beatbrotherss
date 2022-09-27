class UserChatroomsController < ApplicationController
  def create
    @chatroom = Chatroom.create!(name: "chatroom")
    @user1_chatroom = UserChatroom.create!(user_id: current_user.id, chatroom_id: @chatroom.id)
    @user2_chatroom = UserChatroom.create!(user_id: params[:user_id], chatroom_id: @chatroom.id)
    redirect_to chatroom_path(@chatroom)
  end
end
