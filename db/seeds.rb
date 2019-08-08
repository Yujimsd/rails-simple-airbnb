# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
price = (1000..9000).to_a
guest = (1..10).to_a

puts 'start'
10.times do
  Flat.create!(
  name: Faker::Games::Witcher.location,
  address: Faker::Address.full_address,
  description: Faker::GreekPhilosophers.quote,
  price_per_night: price,
  number_of_guests: guest
  )
end
puts 'end'
