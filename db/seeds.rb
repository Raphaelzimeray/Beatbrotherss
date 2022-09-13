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

puts "Finished!"
