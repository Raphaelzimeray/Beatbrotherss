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
  name: "George",
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
user_song_admin = UserSong.new(title:"Black and Blue", category: "Jazz", user_id: admin.id)
user_song_admin.url.attach(io: File.open('app/assets/audio/Black And Blue.mp3'), filename: 'Black And Blue.mp3')
user_song_admin.save!

puts "-> #{admin.name} has been created"
puts "---> #{user_song_admin.title} has been added"

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

user_song_1 = UserSong.new(title: "Hymn To Freedom", category: "Gospel", user_id: user1.id)
user_song_1.url.attach(io: File.open('app/assets/audio/OSCAR PETERSON AND OLIVER JONES HYMN TO FREEDOM.mp3'), filename: 'HYMN TO FREEDOM.mp3')
user_song_1.save!

puts "-> #{user1.name} has been created"
puts "---> #{user_song_1.title} has been added"

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

user_song_2 = UserSong.new(title: "Le chic et le charme", category: "Jazz", user_id: user2.id)
user_song_2.url.attach(io: File.open('app/assets/audio/Le Chic Et Le Charme (Live).mp3'), filename: 'Le Chic Et Le Charme (Live).mp3')
user_song_2.save!


puts "-> #{user2.name} has been created"
puts "---> #{user_song_2.title} has been added"

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


user_song_3 = UserSong.new(title: "Zoo", category: "Rap", user_id: user3.id)
user_song_3.url.attach(io: File.open('app/assets/audio/Kaaris - Zoo.mp3'), filename: 'Kaaris - Zoo.mp3')
user_song_3.save!

puts "-> #{user3.name} has been created"
puts "---> #{user_song_3.title} has been added"

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

user_song_4 = UserSong.new(title: "September Second", category: "Jazz", user_id: user4.id)
user_song_4.url.attach(io: File.open('app/assets/audio/September Second.mp3'), filename: 'September Second.mp3')
user_song_4.save!


puts "-> #{user4.name} has been created"
puts "---> #{user_song_4.title} has been added"

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

user_song_5 = UserSong.new(title: "Changing of the Guards", category: "Pop", user_id: user5.id)
user_song_5.url.attach(io: File.open('app/assets/audio/Bob Dylan - Changing of the Guards (Official Audio).mp3'), filename: 'Changing of the Guards (Official Audio).mp3')
user_song_5.save!


puts "-> #{user5.name} has been created"
puts "---> #{user_song_5.title} has been added"
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

user_song_6 = UserSong.new(title: "La terre est ronde", category: "Rap", user_id: user6.id)
user_song_6.url.attach(io: File.open('app/assets/audio/La terre est ronde.mp3'), filename: 'La terre est ronde.mp3')
user_song_6.save!

puts "-> #{user6.name} has been created"
puts "---> #{user_song_6.title} has been added"

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

user_song_7 = UserSong.new(title: "Moments musicaux No.4 E minor", category: "Classical", user_id: user7.id)
user_song_7.url.attach(io: File.open('app/assets/audio/Nikolai Lugansky plays Rachmaninov Musical Moment No.4 in E minor - medici.tv.mp3'), filename: 'Rachmaninov Musical Moment No.4 in E minor - medici.tv.mp3')
user_song_7.save!

puts "-> #{user7.name} has been created"
puts "---> #{user_song_7.title} has been added"

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

user_song_8 = UserSong.new(title: "Mr Bojangles", category: "Blues", user_id: user8.id)
user_song_8.url.attach(io: File.open('app/assets/audio/Mr. Bojangles.mp3'), filename: 'Mr. Bojangles.mp3')
user_song_8.save!

puts "-> #{user8.name} has been created"
puts "---> #{user_song_8.title} has been added"

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

user_song_9 = UserSong.new(title: "Penthouse Serenade", category: "Jazz", user_id: user9.id)
user_song_9.url.attach(io: File.open('app/assets/audio/Erroll Garner in London - PENTHOUSE SERENADE.mp3'), filename: 'PENTHOUSE SERENADE.mp3')
user_song_9.save!

puts "-> #{user9.name} has been created"
puts "---> #{user_song_9.title} has been added"

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

user_song_10 = UserSong.new(title: "Unchain My Heart", category: "Rock", user_id: user10.id)
user_song_10.url.attach(io: File.open('app/assets/audio/Unchain My Heart.mp3'), filename: 'Unchain My Heart.mp3')
user_song_10.save!

puts "-> #{user10.name} has been created"
puts "---> #{user_song_10.title} has been added"

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

user_song_11 = UserSong.new(title: "Imagine", category: "Pop", user_id: user11.id)
user_song_11.url.attach(io: File.open('app/assets/audio/Imagine (Ultimate Mix).mp3'), filename: 'Imagine (Ultimate Mix).mp3')
user_song_11.save!

puts "-> #{user11.name} has been created"
puts "---> #{user_song_11.title} has been added"

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

user_song_12 = UserSong.new(title: "Vedrai, Vedrai", category: "Pop", user_id: user12.id)
user_song_12.url.attach(io: File.open('app/assets/audio/Vedrai, vedrai.mp3'), filename: 'Vedrai, vedrai.mp3')
user_song_12.save!

puts "-> #{user12.name} has been created"
puts "---> #{user_song_12.title} has been added"

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

user_song_13 = UserSong.new(title: "Us and Them", category: "Pop", user_id: user13.id)
user_song_13.url.attach(io: File.open('app/assets/audio/Pink Floyd - Us and Them.mp3'), filename: 'Us and Them.mp3')
user_song_13.save!

puts "-> #{user13.name} has been created"
puts "---> #{user_song_13.title} has been added"

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

user_song_14 = UserSong.new(title: "Like a Rolling Stone", category: "Rock", user_id: user14.id)
user_song_14.url.attach(io: File.open('app/assets/audio/Bob Dylan - Like a Rolling Stone (Official Audio).mp3'), filename: 'Like a Rolling Stone (Official Audio).mp3')
user_song_14.save!

puts "-> #{user14.name} has been created"
puts "---> #{user_song_14.title} has been added"

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

user_song_15 = UserSong.new(title: "Remember the name", category:"Hip Hop", user_id: user15.id)
user_song_15.url.attach(io: File.open('app/assets/audio/Remember the Name (feat. Styles of Beyond).mp3'), filename: 'Remember the Name (feat. Styles of Beyond).mp3')
user_song_15.save!

puts "-> #{user15.name} has been created"
puts "---> #{user_song_15.title} has been added"

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

user_song_16 = UserSong.new(title: "Ain't Misbehavin", category: "Jazz", user_id: user16.id)
user_song_16.url.attach(io: File.open('app/assets/audio/Fats Waller - Aint Misbehavin (Audio).mp3'), filename: 'Aint Misbehavin (Audio).mp3')
user_song_16.save!

puts "-> #{user16.name} has been created"
puts "---> #{user_song_16.title} has been added"

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

user_song_17 = UserSong.new(title: "La Foule", category: "Pop", user_id: user17.id)
user_song_17.url.attach(io: File.open('app/assets/audio/La Foule - Il Triangolo del Tango.mp3'), filename: 'La Foule - Il Triangolo del Tango.mp3')
user_song_17.save!

puts "-> #{user17.name} has been created"
puts "---> #{user_song_17.title} has been added"

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

user_song_18 = UserSong.new(title: "Rocket Man", category: "Pop", user_id: user18.id)
user_song_18.url.attach(io: File.open('app/assets/audio/Rocket Man (I Think Its Going To Be A Long Long Time).mp3'), filename: 'Rocket Man (I Think Its Going To Be A Long Long Time).mp3')
user_song_18.save!

puts "-> #{user18.name} has been created"
puts "---> #{user_song_18.title} has been added"

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

user_song_19 = UserSong.new(title: "Aguaplano", category: "Jazz", user_id: user19.id)
user_song_19.url.attach(io: File.open('app/assets/audio/Aguaplano (Live).mp3'), filename: 'Aguaplano (Live).mp3')
user_song_19.save!

puts "-> #{user19.name} has been created"
puts "---> #{user_song_19.title} has been added"

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

user_song_20 = UserSong.new(title: "Stand By Me", category: "Blues", user_id: user20.id)
user_song_20.url.attach(io: File.open('app/assets/audio/Stand by Me.mp3'), filename: 'Stand by Me.mp3')
user_song_20.save!

puts "-> #{user20.name} has been created"
puts "---> #{user_song_20.title} has been added"

# puts "creating Chatrooms..."

# Chatroom.create!(name: "Conversation")
# Message.create!(content: "Hi, I love your music ! :)", chatroom_id: Chatroom.first.id, user_id: admin.id)
# Message.create!(content: "Thanks, I just listened to yours and love it aswell ! 🔥", chatroom_id: Chatroom.first.id, user_id: user2.id)

puts 'Assign music style to user ...'

User.all.each do |user|
  # For Demo - delete for real life
  if user.id == admin.id
    nil
  else
    (rand(2..3).round).times do |i|
      styles = MusicStyle.pluck(:id).sample(1).uniq
      styles.each do |s|
        UserMusicStyle.create!(user_id: user.id, music_style_id: s)
      end
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

puts 'Adding some matches ❤️'

User.all.each_with_index do |user, i|
    Favorite.create!(favoritor_type: "User", favoritor_id: user.id, favoritable_type: "User", favoritable_id: User.all[rand(0..(i-1))].id) if i > 1
    Favorite.create!(favoritor_type: "User", favoritor_id: user.id, favoritable_type: "User", favoritable_id: User.all[rand((i+1)..20)].id) if i < 19
end

puts "Finished first step"









puts "create user for demo"

user21 = User.new(
  name: 'Patrick',
  surname: Faker::Name.last_name,
  email: Faker::Internet.email,
  password: Faker::Barcode.ean(8),
  birth_date: '1993',
  address: "#{Faker::Address.street_name} #{Faker::Address.city}",
  latitude: Faker::Address.latitude,
  longitude: Faker::Address.longitude,
  description: "I've been touring for the past 3 months and I'm looking for something more chill now.",
  goal: "superstar",
  experience_in_years: '8',
  number_of_concerts: '15, give or take',
  disponibility: "During the week-end",
)
user21.photos.attach(io: File.open('app/assets/images/user21.jpg'), filename: 'user21.jpg')
user21.save!

user_song_21 = UserSong.new(title: "La Foule", category: "Pop", user_id: user21.id)
user_song_21.url.attach(io: File.open('app/assets/audio/La Foule - Il Triangolo del Tango.mp3'), filename: 'La Foule - Il Triangolo del Tango.mp3')
user_song_21.save!

puts "-> #{user21.name} has been created"
puts "---> #{user_song_21.title} has been added"

user22 = User.new(
  name: 'Alex',
  surname: Faker::Name.last_name,
  email: Faker::Internet.email,
  password: Faker::Barcode.ean(8),
  birth_date: Faker::Date.birthday,
  address: "#{Faker::Address.street_name} #{Faker::Address.city}",
  latitude: Faker::Address.latitude,
  longitude: Faker::Address.longitude,
  description: Faker::GreekPhilosophers.quote,
  goal: "superstar",
  experience_in_years: '6',
  number_of_concerts: '11',
  disponibility: "Almost everyday",
)
user22.photos.attach(io: File.open('app/assets/images/user22.jpg'), filename: 'user22.jpg')
user22.save!

user_song_22 = UserSong.new(title: "Rocket Man", category: "Pop", user_id: user22.id)
user_song_22.url.attach(io: File.open('app/assets/audio/Rocket Man (I Think Its Going To Be A Long Long Time).mp3'), filename: 'Rocket Man (I Think Its Going To Be A Long Long Time).mp3')
user_song_22.save!

puts "-> #{user22.name} has been created"
puts "---> #{user_song_22.title} has been added"

user23 = User.new(
  name: 'Christie',
  surname: Faker::Name.last_name,
  email: Faker::Internet.email,
  password: Faker::Barcode.ean(8),
  birth_date: Faker::Date.birthday,
  address: "#{Faker::Address.street_name} #{Faker::Address.city}",
  latitude: Faker::Address.latitude,
  longitude: Faker::Address.longitude,
  description: Faker::GreekPhilosophers.quote,
  goal: "superstar",
  experience_in_years: '8',
  number_of_concerts: 'Around 12.',
  disponibility: "Only during the night 🧛‍♂️",
)
user23.photos.attach(io: File.open('app/assets/images/user23.jpg'), filename: 'user23.jpg')
user23.save!

user_song_23 = UserSong.new(title: "Stand By Me", category: "Blues", user_id: user23.id)
user_song_23.url.attach(io: File.open('app/assets/audio/Stand by Me.mp3'), filename: 'Stand by Me.mp3')
user_song_23.save!

puts "-> #{user23.name} has been created"
puts "---> #{user_song_23.title} has been added"

user24 = User.new(
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
user24.photos.attach(io: File.open('app/assets/images/user24.jpg'), filename: 'user24.jpg')
user24.save!

user_song_24 = UserSong.new(title: "Aguaplano", category: "Jazz", user_id: user24.id)
user_song_24.url.attach(io: File.open('app/assets/audio/Aguaplano (Live).mp3'), filename: 'Aguaplano (Live).mp3')
user_song_24.save!

puts "-> #{user24.name} has been created"
puts "---> #{user_song_24.title} has been added"


admin_style = MusicStyle.create!(name: 'Pop-Rock')
UserMusicStyle.create!(user_id: admin.id, music_style_id: admin_style.id)
UserMusicStyle.create!(user_id: user21.id, music_style_id: admin_style.id)
UserMusicStyle.create!(user_id: user22.id, music_style_id: admin_style.id)
UserMusicStyle.create!(user_id: user23.id, music_style_id: admin_style.id)
UserMusicStyle.create!(user_id: user24.id, music_style_id: admin_style.id)

UserInstrument.create!(user_id: user21.id, instrument_id: Instrument.all[4].id, level: 'beginer')
UserInstrument.create!(user_id: user21.id, instrument_id: Instrument.all[3].id, level: 'medium')

UserInstrument.create!(user_id: user22.id, instrument_id: Instrument.all[3].id, level: 'beginner')
UserInstrument.create!(user_id: user22.id, instrument_id: Instrument.all[7].id, level: 'expert')

UserInstrument.create!(user_id: user23.id, instrument_id: Instrument.all[3].id, level: 'expert')

UserInstrument.create!(user_id: user24.id, instrument_id: Instrument.all[3].id, level: 'beginner')
UserInstrument.create!(user_id: user24.id, instrument_id: Instrument.all[2].id, level: 'medium')

puts "Finish the demo step"
