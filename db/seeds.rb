# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
puts 'Deleting all flats'

Flat.destroy_all

puts 'Creating database'

20.times do
  Flat.create!(
    name: Faker::Movies::HarryPotter.location,
    address: Faker::Address.full_address,
    description: Faker::Marketing.buzzwords,
    price_per_night: Faker::Number.number(digits: 3),
    number_of_guests: Faker::Number.number(digits: 1),
    picture_url: Faker::LoremFlickr.image(search_terms: ['house'])
  )
end

puts 'Finished making flats'
