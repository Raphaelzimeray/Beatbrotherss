class CreateUserChatrooms < ActiveRecord::Migration[6.1]
  def change
    create_table :user_chatrooms do |t|
      t.references :chatroom
      t.references :user

      t.timestamps
    end
  end
end
