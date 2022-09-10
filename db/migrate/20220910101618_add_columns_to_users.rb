class AddColumnsToUsers < ActiveRecord::Migration[6.1]
  def change
    add_column :users, :name, :string
    add_column :users, :surname, :string
    add_column :users, :birth_date, :date
    add_column :users, :address, :string
    add_column :users, :latitude, :float
    add_column :users, :longitude, :float
    add_column :users, :description, :text
    add_column :users, :music_style, :string
    add_column :users, :goal, :string
    add_column :users, :experience_in_years, :integer
    add_column :users, :number_of_concerts, :integer
    add_column :users, :disponibility, :string
    add_column :users, :avatar_url, :string
  end
end
