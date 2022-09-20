class RemoveMusicStyleToUsers < ActiveRecord::Migration[6.1]
  def change
    remove_column :users, :music_style
  end
end
