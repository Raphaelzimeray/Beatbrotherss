# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'faker'

puts "Cleaning database..."
UserMusicStyle.destroy_all
MusicStyle.destroy_all
User.destroy_all

puts "Creating music styles..."
music_styles = ['Classical',
  'Blues',
  'Country',
  'Electronic',
  'EDM',
  'House',
  'Techno',
  'Folk',
  'Rap',
  'Hip-Hop',
  'Jazz',
  'Pop',
  'Rock',
  'Classic Rock',
  'Progressive Rock',
  'Hard Rock',
  'Metal',
  'Punk']
music_styles.each do |style|
  MusicStyle.create!(name: style)
end

puts "Creating users..."
admin = User.new(
  name: "Lorem",
  surname: "Test",
  email: "test@test.fr",
  password: "123456",
  birth_date: "07/05/1990",
  address: "17 rue du Louvre, 75001 Paris",
  latitude: 48.86427654238201,
  longitude: 2.3423347492955915,
  description: "I'm the boss !",
  goal: "superstar",
  experience_in_years: "7",
  number_of_concerts: "3",
  disponibility: "1 day per week",
  avatar_url: "https://placeimg.com/600/300/people"
)
admin.save!
puts "-> #{admin.name} has been created"

user1 = User.new(

  name: "Matthis",
  surname: "Savagnac",
  email: "matthis@test.fr",
  password: "123456",
  birth_date: "07/05/1990",
  address: "17 rue du Louvre, 75001 Paris",
  latitude: 48.86427654238201,
  longitude: 2.3423347492955915,
  description: "I'm the boss !",
  goal: "superstar",
  experience_in_years: "7",
  number_of_concerts: "3",
  disponibility: "1 day per week",
  avatar_url: "https://placeimg.com/600/300/people"
)
user1.save!
puts "-> #{user1.name} has been created"

user2 = User.new(

  name: "Fabrice",
  surname: "Sauvion",
  email: "fabrice@gmail.fr",
  password: "123456",
  birth_date: "16/03/1967",
  address: "5 Rue Curial, 75019 Paris",
  latitude: 48.893266460975724,
  longitude: 2.3729876233375475,
  description: "I'm looking for a musician",
  goal: "superstar",
  experience_in_years: Faker::Number.within(range: 1..50),
  number_of_concerts: Faker::Number.within(range: 1..10),
  disponibility: "Monday and Wednesday nights",
  avatar_url: Faker::Avatar.image(slug: Faker::Name.first_name, size: "360x360", format: "jpg")
)
user2.save!
puts "-> #{user2.name} has been created"

user3 = User.new(

  name: "Jeanne",
  surname: "Blear",
  email: "jeanne@gmail.fr",
  password: "123456",
  birth_date: "29/04/1997",
  address: "25 Rue du Premier Film, 69008 Lyon",
  latitude: 45.74562889267446,
  longitude: 4.870968084131842,
  description: "I love music and I will love meet other musician",
  goal: "superstar",
  experience_in_years: Faker::Number.within(range: 1..50),
  number_of_concerts: Faker::Number.within(range: 1..10),
  disponibility: "During the week-end",
  avatar_url: Faker::Avatar.image(slug: Faker::Name.first_name, size: "360x360", format: "jpg")
)
user3.save!
puts "-> #{user3.name} has been created"

user4 = User.new(
  name: Faker::Name.first_name,
  surname: Faker::Name.last_name,
  email: Faker::Internet.email,
  password: Faker::Barcode.ean(8),
  birth_date: Faker::Date.birthday,
  address: "#{Faker::Address.street_name} #{Faker::Address.city}",
  latitude: Faker::Address.latitude,
  longitude: Faker::Address.longitude,
  description: Faker::GreekPhilosophers.quote,
  goal: "superstar",
  experience_in_years: Faker::Number.within(range: 1..50),
  number_of_concerts: Faker::Number.within(range: 1..10),
  disponibility: "During the week-end",
  avatar_url: Faker::Avatar.image(slug: Faker::Name.first_name, size: "360x360", format: "jpg")
)
user4.save!
puts "-> #{user4.name} has been created"

user5 = User.new(
  name: Faker::Name.first_name,
  surname: Faker::Name.last_name,
  email: Faker::Internet.email,
  password: Faker::Barcode.ean(8),
  birth_date: Faker::Date.birthday,
  address: "#{Faker::Address.street_name} #{Faker::Address.city}",
  latitude: Faker::Address.latitude,
  longitude: Faker::Address.longitude,
  description: Faker::GreekPhilosophers.quote,
  goal: "superstar",
  experience_in_years: Faker::Number.within(range: 1..50),
  number_of_concerts: Faker::Number.within(range: 1..10),
  disponibility: "Any night of the week",
  avatar_url: Faker::Avatar.image(slug: Faker::Name.first_name, size: "360x360", format: "jpg")
)
user5.save!
puts "-> #{user5.name} has been created"

user6 = User.new(
  name: Faker::Name.first_name,
  surname: Faker::Name.last_name,
  email: Faker::Internet.email,
  password: Faker::Barcode.ean(8),
  birth_date: Faker::Date.birthday,
  address: "#{Faker::Address.street_name} #{Faker::Address.city}",
  latitude: Faker::Address.latitude,
  longitude: Faker::Address.longitude,
  description: Faker::GreekPhilosophers.quote,
  goal: "superstar",
  experience_in_years: Faker::Number.within(range: 1..50),
  number_of_concerts: Faker::Number.within(range: 1..10),
  disponibility: "During the week-end",
  avatar_url: Faker::Avatar.image(slug: Faker::Name.first_name, size: "360x360", format: "jpg")
)
user6.save!
puts "-> #{user6.name} has been created"

user7 = User.new(
  name: Faker::Name.first_name,
  surname: Faker::Name.last_name,
  email: Faker::Internet.email,
  password: Faker::Barcode.ean(8),
  birth_date: Faker::Date.birthday,
  address: "#{Faker::Address.street_name} #{Faker::Address.city}",
  latitude: Faker::Address.latitude,
  longitude: Faker::Address.longitude,
  description: Faker::GreekPhilosophers.quote,
  goal: "superstar",
  experience_in_years: Faker::Number.within(range: 1..50),
  number_of_concerts: Faker::Number.within(range: 1..10),
  disponibility: "Once a week",
  avatar_url: Faker::Avatar.image(slug: Faker::Name.first_name, size: "360x360", format: "jpg")
)
user7.save!
puts "-> #{user7.name} has been created"

user8 = User.new(
  name: Faker::Name.first_name,
  surname: Faker::Name.last_name,
  email: Faker::Internet.email,
  password: Faker::Barcode.ean(8),
  birth_date: Faker::Date.birthday,
  address: "#{Faker::Address.street_name} #{Faker::Address.city}",
  latitude: Faker::Address.latitude,
  longitude: Faker::Address.longitude,
  description: Faker::GreekPhilosophers.quote,
  goal: "superstar",
  experience_in_years: Faker::Number.within(range: 1..50),
  number_of_concerts: Faker::Number.within(range: 1..10),
  disponibility: "During the week-end",
  avatar_url: Faker::Avatar.image(slug: Faker::Name.first_name, size: "360x360", format: "jpg")
)
user8.save!
puts "-> #{user8.name} has been created"

user9 = User.new(
  name: Faker::Name.first_name,
  surname: Faker::Name.last_name,
  email: Faker::Internet.email,
  password: Faker::Barcode.ean(8),
  birth_date: Faker::Date.birthday,
  address: "#{Faker::Address.street_name} #{Faker::Address.city}",
  latitude: Faker::Address.latitude,
  longitude: Faker::Address.longitude,
  description: Faker::GreekPhilosophers.quote,
  goal: "superstar",
  experience_in_years: Faker::Number.within(range: 1..50),
  number_of_concerts: Faker::Number.within(range: 1..10),
  disponibility: "During the week-end",
  avatar_url: Faker::Avatar.image(slug: Faker::Name.first_name, size: "360x360", format: "jpg")
)
user9.save!
puts "-> #{user9.name} has been created"

user10 = User.new(
  name: Faker::Name.first_name,
  surname: Faker::Name.last_name,
  email: Faker::Internet.email,
  password: Faker::Barcode.ean(8),
  birth_date: Faker::Date.birthday,
  address: "#{Faker::Address.street_name} #{Faker::Address.city}",
  latitude: Faker::Address.latitude,
  longitude: Faker::Address.longitude,
  description: Faker::GreekPhilosophers.quote,
  goal: "superstar",
  experience_in_years: Faker::Number.within(range: 1..50),
  number_of_concerts: Faker::Number.within(range: 1..10),
  disponibility: "Depends",
  avatar_url: Faker::Avatar.image(slug: Faker::Name.first_name, size: "360x360", format: "jpg")
)
user10.save!
puts "-> #{user10.name} has been created"

user11 = User.new(
  name: Faker::Name.first_name,
  surname: Faker::Name.last_name,
  email: Faker::Internet.email,
  password: Faker::Barcode.ean(8),
  birth_date: Faker::Date.birthday,
  address: "#{Faker::Address.street_name} #{Faker::Address.city}",
  latitude: Faker::Address.latitude,
  longitude: Faker::Address.longitude,
  description: Faker::GreekPhilosophers.quote,
  goal: "superstar",
  experience_in_years: Faker::Number.within(range: 1..50),
  number_of_concerts: Faker::Number.within(range: 1..10),
  disponibility: "During the week-end",
  avatar_url: Faker::Avatar.image(slug: Faker::Name.first_name, size: "360x360", format: "jpg")
)
user11.save!
puts "-> #{user11.name} has been created"

user12 = User.new(
  name: Faker::Name.first_name,
  surname: Faker::Name.last_name,
  email: Faker::Internet.email,
  password: Faker::Barcode.ean(8),
  birth_date: Faker::Date.birthday,
  address: "#{Faker::Address.street_name} #{Faker::Address.city}",
  latitude: Faker::Address.latitude,
  longitude: Faker::Address.longitude,
  description: Faker::GreekPhilosophers.quote,
  goal: "superstar",
  experience_in_years: Faker::Number.within(range: 1..50),
  number_of_concerts: Faker::Number.within(range: 1..10),
  disponibility: "During the week-end",
  avatar_url: Faker::Avatar.image(slug: Faker::Name.first_name, size: "360x360", format: "jpg")
)
user12.save!
puts "-> #{user12.name} has been created"

user13 = User.new(
  name: Faker::Name.first_name,
  surname: Faker::Name.last_name,
  email: Faker::Internet.email,
  password: Faker::Barcode.ean(8),
  birth_date: Faker::Date.birthday,
  address: "#{Faker::Address.street_name} #{Faker::Address.city}",
  latitude: Faker::Address.latitude,
  longitude: Faker::Address.longitude,
  description: Faker::GreekPhilosophers.quote,
  goal: "superstar",
  experience_in_years: Faker::Number.within(range: 1..50),
  number_of_concerts: Faker::Number.within(range: 1..10),
  disponibility: "Every day mate",
  avatar_url: Faker::Avatar.image(slug: Faker::Name.first_name, size: "360x360", format: "jpg")
)
user13.save!
puts "-> #{user13.name} has been created"

user14 = User.new(
  name: Faker::Name.first_name,
  surname: Faker::Name.last_name,
  email: Faker::Internet.email,
  password: Faker::Barcode.ean(8),
  birth_date: Faker::Date.birthday,
  address: "#{Faker::Address.street_name} #{Faker::Address.city}",
  latitude: Faker::Address.latitude,
  longitude: Faker::Address.longitude,
  description: Faker::GreekPhilosophers.quote,
  goal: "superstar",
  experience_in_years: Faker::Number.within(range: 1..50),
  number_of_concerts: Faker::Number.within(range: 1..10),
  disponibility: "During the week nights",
  avatar_url: Faker::Avatar.image(slug: Faker::Name.first_name, size: "360x360", format: "jpg")
)
user14.save!
puts "-> #{user14.name} has been created"

user15 = User.new(
  name: Faker::Name.first_name,
  surname: Faker::Name.last_name,
  email: Faker::Internet.email,
  password: Faker::Barcode.ean(8),
  birth_date: Faker::Date.birthday,
  address: "#{Faker::Address.street_name} #{Faker::Address.city}",
  latitude: Faker::Address.latitude,
  longitude: Faker::Address.longitude,
  description: Faker::GreekPhilosophers.quote,
  goal: "superstar",
  experience_in_years: Faker::Number.within(range: 1..50),
  number_of_concerts: Faker::Number.within(range: 1..10),
  disponibility: "24/7",
  avatar_url: Faker::Avatar.image(slug: Faker::Name.first_name, size: "360x360", format: "jpg")
)
user15.save!
puts "-> #{user15.name} has been created"

user16 = User.new(
  name: Faker::Name.first_name,
  surname: Faker::Name.last_name,
  email: Faker::Internet.email,
  password: Faker::Barcode.ean(8),
  birth_date: Faker::Date.birthday,
  address: "#{Faker::Address.street_name} #{Faker::Address.city}",
  latitude: Faker::Address.latitude,
  longitude: Faker::Address.longitude,
  description: Faker::GreekPhilosophers.quote,
  goal: "superstar",
  experience_in_years: Faker::Number.within(range: 1..50),
  number_of_concerts: Faker::Number.within(range: 1..10),
  disponibility: "During the week-end",
  avatar_url: Faker::Avatar.image(slug: Faker::Name.first_name, size: "360x360", format: "jpg")
)
user16.save!
puts "-> #{user16.name} has been created"

user17 = User.new(
  name: Faker::Name.first_name,
  surname: Faker::Name.last_name,
  email: Faker::Internet.email,
  password: Faker::Barcode.ean(8),
  birth_date: Faker::Date.birthday,
  address: "#{Faker::Address.street_name} #{Faker::Address.city}",
  latitude: Faker::Address.latitude,
  longitude: Faker::Address.longitude,
  description: Faker::GreekPhilosophers.quote,
  goal: "superstar",
  experience_in_years: Faker::Number.within(range: 1..50),
  number_of_concerts: Faker::Number.within(range: 1..10),
  disponibility: "During the week-end",
  avatar_url: Faker::Avatar.image(slug: Faker::Name.first_name, size: "360x360", format: "jpg")
)
user17.save!
puts "-> #{user17.name} has been created"

user18 = User.new(
  name: Faker::Name.first_name,
  surname: Faker::Name.last_name,
  email: Faker::Internet.email,
  password: Faker::Barcode.ean(8),
  birth_date: Faker::Date.birthday,
  address: "#{Faker::Address.street_name} #{Faker::Address.city}",
  latitude: Faker::Address.latitude,
  longitude: Faker::Address.longitude,
  description: Faker::GreekPhilosophers.quote,
  goal: "superstar",
  experience_in_years: Faker::Number.within(range: 1..50),
  number_of_concerts: Faker::Number.within(range: 1..10),
  disponibility: "Almost everyday",
  avatar_url: Faker::Avatar.image(slug: Faker::Name.first_name, size: "360x360", format: "jpg")
)
user18.save!
puts "-> #{user18.name} has been created"

user19 = User.new(
  name: Faker::Name.first_name,
  surname: Faker::Name.last_name,
  email: Faker::Internet.email,
  password: Faker::Barcode.ean(8),
  birth_date: Faker::Date.birthday,
  address: "#{Faker::Address.street_name} #{Faker::Address.city}",
  latitude: Faker::Address.latitude,
  longitude: Faker::Address.longitude,
  description: Faker::GreekPhilosophers.quote,
  goal: "superstar",
  experience_in_years: Faker::Number.within(range: 1..50),
  number_of_concerts: Faker::Number.within(range: 1..10),
  disponibility: "During the week-end",
  avatar_url: Faker::Avatar.image(slug: Faker::Name.first_name, size: "360x360", format: "jpg")
)
user19.save!
puts "-> #{user19.name} has been created"

user20 = User.new(
  name: Faker::Name.first_name,
  surname: Faker::Name.last_name,
  email: Faker::Internet.email,
  password: Faker::Barcode.ean(8),
  birth_date: Faker::Date.birthday,
  address: "#{Faker::Address.street_name} #{Faker::Address.city}",
  latitude: Faker::Address.latitude,
  longitude: Faker::Address.longitude,
  description: Faker::GreekPhilosophers.quote,
  goal: "superstar",
  experience_in_years: Faker::Number.within(range: 1..50),
  number_of_concerts: Faker::Number.within(range: 1..10),
  disponibility: "Only during the night 🧛‍♂️",
  avatar_url: Faker::Avatar.image(slug: Faker::Name.first_name, size: "360x360", format: "jpg")
)
user20.save!
puts "-> #{user20.name} has been created"

puts "creating Chatrooms..."

Chatroom.create!(name: "Conversation")
Message.create!(content: "Hi, I love your music ! :)", chatroom_id: Chatroom.first.id, user_id: admin.id)
Message.create!(content: "Thanks, I just listened to yours and love it aswell ! 🔥", chatroom_id: Chatroom.first.id, user_id: user2.id)

puts "Finished!"

User.all.each do |user|
  # (rand(1..3).round).times do |i|
    styles = MusicStyle.pluck(:id).sample(1).uniq
    styles.each do |s|
      UserMusicStyle.create!(user_id: user.id, music_style_id: s)
    end
  # end
end
