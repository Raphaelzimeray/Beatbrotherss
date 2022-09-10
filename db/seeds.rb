# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

puts "Cleaning database..."
User.destroy_all

puts "Creating users..."
user1 = User.new(
  name: "Matthis",
  surname: "Savagnac",
  email: "test@test.fr",
  encrypted_password: "123456"
)
user1.save!
puts "-> #{user1.name} has been created"

user2 = User.new(
  name: "Fabrice",
  surname: "Sauvion",
  email: "fabrice@gmail.fr",
  encrypted_password: "123456"
)
user2.save!
puts "-> #{user2.name} has been created"

user3 = User.new(
  name: "Jeanne",
  surname: "Blear",
  email: "jeanne@gmail.fr",
  encrypted_password: "123456"
)
user3.save!
puts "-> #{user3.name} has been created"

puts "Finished!"
