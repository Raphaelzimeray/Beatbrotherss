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
  name: "Matthis",
  surname: "Savagnac",
  email: "test@test.fr",
  password: "123456",
  birth_date: "07/05/1990",
  address: "17 rue du Louvre, 75001 Paris",
  latitude: 48.86427654238201,
  longitude: 2.3423347492955915,
  description: "I'm the boss !",
  music_style: ["Electronic", "Progressive Rock", "Blues"],
  goal: "superstar",
  experience_in_years: "7",
  number_of_concerts: "3",
  disponibility: "1 day per week",
  avatar_url: "https://instagram.fcdg2-1.fna.fbcdn.net/v/t51.2885-19/273488722_139747375172715_5469094247778313976_n.jpg?stp=dst-jpg_s150x150&_nc_ht=instagram.fcdg2-1.fna.fbcdn.net&_nc_cat=103&_nc_ohc=rLej_MB7FVIAX8V6IIf&edm=AHG7ALcBAAAA&ccb=7-5&oh=00_AT98LTIkn5AvGQjjD1oyxzHCdiUeHKMZt3GGYmI1CA10nw&oe=63272E8C&_nc_sid=5cbaad"
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
  music_style: ["Jazz", "Hip-Hop"],
  goal: "superstar",
  experience_in_years: "2",
  number_of_concerts: "",
  disponibility: "Every night",
  avatar_url: "https://img.freepik.com/photos-gratuite/jeune-musicien-jazz-afro-americain-jouant-du-saxophone-bleu_155003-32575.jpg?w=2000&t=st=1663088993~exp=1663089593~hmac=1b8fd57a976f385ae753b7de75300229db0fbad9b241ef72a004e250c90a8402"
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
  music_style: ["Classical", "Folk", "Rock"],
  goal: "superstar",
  experience_in_years: "3",
  number_of_concerts: "",
  disponibility: "During the week-end",
  avatar_url: "https://www.studio1822.fr/wp-content/uploads/2018/05/portrait_musicien_Lucie_Helleboid_violoniste-10.jpg"
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
  avatar_url: Faker::Avatar.image(slug: Faker::Name.first_name, size: "50x50", format: "jpg")
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
  avatar_url: Faker::Avatar.image(slug: Faker::Name.first_name, size: "50x50", format: "jpg")
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
  avatar_url: Faker::Avatar.image(slug: Faker::Name.first_name, size: "50x50", format: "jpg")
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
  avatar_url: Faker::Avatar.image(slug: Faker::Name.first_name, size: "50x50", format: "jpg")
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
  avatar_url: Faker::Avatar.image(slug: Faker::Name.first_name, size: "50x50", format: "jpg")
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
  avatar_url: Faker::Avatar.image(slug: Faker::Name.first_name, size: "50x50", format: "jpg")
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
  avatar_url: Faker::Avatar.image(slug: Faker::Name.first_name, size: "50x50", format: "jpg")
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
  avatar_url: Faker::Avatar.image(slug: Faker::Name.first_name, size: "50x50", format: "jpg")
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
  avatar_url: Faker::Avatar.image(slug: Faker::Name.first_name, size: "50x50", format: "jpg")
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
  avatar_url: Faker::Avatar.image(slug: Faker::Name.first_name, size: "50x50", format: "jpg")
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
  avatar_url: Faker::Avatar.image(slug: Faker::Name.first_name, size: "50x50", format: "jpg")
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
  avatar_url: Faker::Avatar.image(slug: Faker::Name.first_name, size: "50x50", format: "jpg")
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
  avatar_url: Faker::Avatar.image(slug: Faker::Name.first_name, size: "50x50", format: "jpg")
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
  avatar_url: Faker::Avatar.image(slug: Faker::Name.first_name, size: "50x50", format: "jpg")
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
  avatar_url: Faker::Avatar.image(slug: Faker::Name.first_name, size: "50x50", format: "jpg")
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
  avatar_url: Faker::Avatar.image(slug: Faker::Name.first_name, size: "50x50", format: "jpg")
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
  avatar_url: Faker::Avatar.image(slug: Faker::Name.first_name, size: "50x50", format: "jpg")
)
user20.save!
puts "-> #{user20.name} has been created"

puts "Finished!"
