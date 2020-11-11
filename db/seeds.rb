# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

puts "Generating 10 flats"

Flat.create!(
  name: 'Light & Spacious Garden Flat London',
  address: '10 Clifton Gardens London W9 1DT',
  description: 'A lovely summer feel for this spacious garden flat. Two double bedrooms, open plan living area, large kitchen and a beautiful conservatory',
  price_per_night: 75,
  number_of_guests: 3
)

names = [
  "Dark hole", "Small and dirty cave", "Shithole in sketchy area",
  "Overpriced and smelly, just for you", "Right next to construction site", "Tent, very green",
  "Best spot under the bridge", "Tiny and narrow", "Living with mice, an authentic experience"]

10.times do |i|
  flat = Flat.new
  flat.name = names[i-1]
  flat.address = Faker::Address.full_address
  flat.price_per_night = rand(100) + 50
  flat.number_of_guests = rand(7) + 1
  flat.description = Faker::Lorem.paragraph
  flat.save!
end

puts "Done."
