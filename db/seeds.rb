# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Hotel.destroy_all

puts "Bonjour, je commence la SEED"

puts "1/3 seeding hotels"

chez_caro = Hotel.create!(name: "chez Caro", address: "55 quai des Grands Augustins", city: "Paris")
puts "created #{Hotel.count} hotel(s)"

puts "2/3 seeding rooms"
Room.create!(hotel: chez_caro, room_number: 1, capacity: 2, daily_price: 60)
Room.create!(hotel: chez_caro, room_number: 2, capacity: 4, daily_price: 90)
Room.create!(hotel: chez_caro, room_number: 3, capacity: 3, daily_price: 110)
puts "created #{Room.count} room(s)"

puts "3/3 seeding bookings"
puts "ben non, pas de bookings"

puts "done seeding"
