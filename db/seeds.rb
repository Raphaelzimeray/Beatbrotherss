# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'faker'

puts "Cleaning database..."
User.destroy_all

puts "Creating users..."
user1 = User.new(
  name: Faker::Name.first_name,
  surname: Faker::Name.last_name,
  email: Faker::Internet.email,
  password: Faker::Barcode.ean(8),
  birth_date: Faker::Date.birthday,
  address: "#{Faker::Address.street_name} #{Faker::Address.city}",
  latitude: Faker::Address.latitude,
  longitude: Faker::Address.longitude,
  description: Faker::GreekPhilosophers.quote,
  music_style: ["Electro", "Rock", "Metal"],
  goal: "superstar",
  experience_in_years: Faker::Number.within(range: 1..50),
  number_of_concerts: Faker::Number.within(range: 1..10),
  disponibility: "Every day, all day",
  avatar_url: Faker::Avatar.image(slug: Faker::Name.first_name, size: "360x360", format: "jpg")
)
user1.save!
puts "-> #{user1.name} has been created"

user2 = User.new(
  name: Faker::Name.first_name,
  surname: Faker::Name.last_name,
  email: Faker::Internet.email,
  password: Faker::Barcode.ean(8),
  birth_date: Faker::Date.birthday,
  address: "#{Faker::Address.street_name} #{Faker::Address.city}",
  latitude: Faker::Address.latitude,
  longitude: Faker::Address.longitude,
  description: Faker::GreekPhilosophers.quote,
  music_style: ["Classical", "Electro"],
  goal: "superstar",
  experience_in_years: Faker::Number.within(range: 1..50),
  number_of_concerts: Faker::Number.within(range: 1..10),
  disponibility: "Monday and Wednesday nights",
  avatar_url: Faker::Avatar.image(slug: Faker::Name.first_name, size: "360x360", format: "jpg")
)
user2.save!
puts "-> #{user2.name} has been created"

user3 = User.new(
  name: Faker::Name.first_name,
  surname: Faker::Name.last_name,
  email: Faker::Internet.email,
  password: Faker::Barcode.ean(8),
  birth_date: Faker::Date.birthday,
  address: "#{Faker::Address.street_name} #{Faker::Address.city}",
  latitude: Faker::Address.latitude,
  longitude: Faker::Address.longitude,
  description: Faker::GreekPhilosophers.quote,
  music_style: ["Rock", "Folk", "Pop"],
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
  music_style: ["Classical", "Folk", "Rock"],
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
  music_style: ["Country", "House", "Rock"],
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
  music_style: ["Hard Rock", "Metal", "Punk"],
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
  music_style: ["Progressive Rock", "Techno", "Classical"],
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
  music_style: ["Electronic"],
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
  music_style: ["Country", "Folk"],
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
  music_style: ["Rap", "Hip-Hop", "Blues"],
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
  music_style: ["Classical", "Folk", "Rock"],
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
  music_style: ["Electronic", "Rock"],
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
  music_style: ["Rock"],
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
  music_style: ["Classic Rock", "Punk"],
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
  music_style: ["Punk", "Country", "Rap"],
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
  music_style: ["Classical", "Rock"],
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
  music_style: ["Electronic", "Rock"],
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
  music_style: ["Pop", "Rock"],
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
  music_style: ["Rap", "Hip-Hop"],
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
  music_style: ["EDM", "House", "Techno"],
  goal: "superstar",
  experience_in_years: Faker::Number.within(range: 1..50),
  number_of_concerts: Faker::Number.within(range: 1..10),
  disponibility: "Only during the night 🧛‍♂️",
  avatar_url: Faker::Avatar.image(slug: Faker::Name.first_name, size: "360x360", format: "jpg")
)
user20.save!
puts "-> #{user20.name} has been created"

puts "Finished!"
