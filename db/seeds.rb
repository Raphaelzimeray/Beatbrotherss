# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'faker'

puts "Cleaning database..."
MusicStyle.destroy_all
UserMusicStyle.destroy_all
Chatroom.destroy_all
Message.destroy_all
UserInstrument.destroy_all
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

puts "Creating instruments..."
instru_strings = ['Violin',
  'Alto',
  'Cello',
  'Bass',
  'Guitar',
  'Harp',
  'Harpsichord',
  'Piano']
  instru_strings.each do |instrument|
  Instrument.create!(name: instrument, category: 'String instruments')
end

instru_winds = ['Recorder flute',
  'Transverse flute',
  'Clarinet',
  'Saxophone',
  'Trumpet',
  'Trombone',
  'Tuba',
  'Organ']
  instru_winds.each do |instrument|
  Instrument.create!(name: instrument, category: 'Wind instruments')
end

instru_percussions = ['Xylophone',
  'Drums']
  instru_percussions.each do |instrument|
  Instrument.create!(name: instrument, category: 'Percussion')
end

Instrument.create!(name: 'Singing', category: 'Vocal')

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
)
admin.photos.attach(io: File.open('app/assets/images/ringo.jpeg'), filename: 'ringo.jpeg', content_type: 'image/jpeg')
admin.save!
puts "-> #{admin.name} has been created"

user1 = User.new(

  name: "Matthis",
  surname: "Savagnac",
  email: "matthis@testt.fr",
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
)
user1.photos.attach(io: File.open('app/assets/images/user1.jpg'), filename: 'user1.jpg')
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
)
user2.photos.attach(io: File.open('app/assets/images/user2.jpg'), filename: 'user2.jpg')
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
)
user3.photos.attach(io: File.open('app/assets/images/user3.jpg'), filename: 'user3.jpg')
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
)
user4.photos.attach(io: File.open('app/assets/images/user4.jpg'), filename: 'user4.jpg')
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
)
user5.photos.attach(io: File.open('app/assets/images/user5.jpg'), filename: 'user5.jpg')
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
)
user6.photos.attach(io: File.open('app/assets/images/user6.jpg'), filename: 'user6.jpg')
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
)
user7.photos.attach(io: File.open('app/assets/images/user7.jpg'), filename: 'user7.jpg')
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
)
user8.photos.attach(io: File.open('app/assets/images/user8.jpg'), filename: 'user8.jpg')
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
)
user9.photos.attach(io: File.open('app/assets/images/user9.jpg'), filename: 'user9.jpg')
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
)
user10.photos.attach(io: File.open('app/assets/images/user10.jpg'), filename: 'user10.jpg')
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
)
user11.photos.attach(io: File.open('app/assets/images/user11.jpg'), filename: 'user11.jpg')
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
)
user12.photos.attach(io: File.open('app/assets/images/user12.jpg'), filename: 'user12.jpg')
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
)
user13.photos.attach(io: File.open('app/assets/images/user13.jpg'), filename: 'user13.jpg')
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
)
user14.photos.attach(io: File.open('app/assets/images/user14.jpg'), filename: 'user14.jpg')
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
)
user15.photos.attach(io: File.open('app/assets/images/user15.jpg'), filename: 'user15.jpg')
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
)
user16.photos.attach(io: File.open('app/assets/images/user16.jpg'), filename: 'user16.jpg')
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
)
user17.photos.attach(io: File.open('app/assets/images/user17.jpg'), filename: 'user17.jpg')
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
)
user18.photos.attach(io: File.open('app/assets/images/user18.jpg'), filename: 'user18.jpg')
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
)
user19.photos.attach(io: File.open('app/assets/images/user19.jpg'), filename: 'user19.jpg')
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
)
user20.photos.attach(io: File.open('app/assets/images/user20.jpg'), filename: 'user20.jpg')
user20.save!
puts "-> #{user20.name} has been created"

# puts "creating Chatrooms..."

# Chatroom.create!(name: "Conversation")
# Message.create!(content: "Hi, I love your music ! :)", chatroom_id: Chatroom.first.id, user_id: admin.id)
# Message.create!(content: "Thanks, I just listened to yours and love it aswell ! 🔥", chatroom_id: Chatroom.first.id, user_id: user2.id)

puts 'Assign music style to user ...'

User.all.each do |user|
  (rand(2..3).round).times do |i|
    styles = MusicStyle.pluck(:id).sample(1).uniq
    styles.each do |s|
      UserMusicStyle.create!(user_id: user.id, music_style_id: s)
    end
  end
end

puts 'Assign instruments to user ...'

User.all.each do |user|
  (rand(1..2).round).times do |i|
    instru = Instrument.pluck(:id).sample(1).uniq
    instru.each do |i|
      UserInstrument.create!(user_id: user.id, instrument_id: i, level: ['beginner', 'middle', 'expert'].sample)
    end
  end
end

puts "Finished!"
