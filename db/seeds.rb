# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
require 'faker'

User.destroy_all
puts "Users deleted"
Instrument.destroy_all
puts "Intruments deleted"
User.create!(
  email: "test@email.com",
  password: "123456"
)
puts "creating instruments"

10.times do
  Instrument.create!(
    genre: Faker::Music.genre,
    name: Faker::Music.instrument,
    price: Faker::Number.decimal(l_digits: 2),
    location: "#{Faker::Address.street_address}, #{Faker::Address.city}",
    description: Faker::ChuckNorris.fact,
    user_id: User.last.id
  )
  puts "Instrument added: #{Instrument.last.name}"
end
