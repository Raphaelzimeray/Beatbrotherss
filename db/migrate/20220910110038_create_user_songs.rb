class CreateUserSongs < ActiveRecord::Migration[6.1]
  def change
    create_table :user_songs do |t|
      t.string :title
      t.string :url
      t.string :category
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
