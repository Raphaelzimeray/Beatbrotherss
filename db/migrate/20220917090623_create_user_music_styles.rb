class CreateUserMusicStyles < ActiveRecord::Migration[6.1]
  def change
    create_table :user_music_styles do |t|
      t.references :user
      t.references :music_style
      t.timestamps
    end
  end
end
