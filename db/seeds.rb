# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
puts "Cleaning database..."
Restaurant.destroy_all

puts "Creating restaurants..."
pop_ups = {name: "Pop Ups", address: "Waagner-Biro-Straße 109, 8020 Graz", phone_number: "0316573357", category: "belgian"}
calamar = {name: "Calamar", address: "Waagner-Biro-Straße 47, 8020 Graz", phone_number: "06766829471", category: "italian"}
adrial_grill = {name: "Adria Grill", address: "Wiener Str. 2, 8020 Graz", phone_number: "06765700940", category: "french" }
restaurant_shanghai = {name: "Restaurant Shanghai", address: "Jasomirgottstraße 6, 1010 Wien", phone_number: "015337419", category: "chinese"}
restaurant_kojiro = {name: "Restaurant Kojiro", address: "Gumpendorfer Str. 59, 1060 Wien", phone_number: "015337419", category: "japanese"}

[pop_ups, calamar, adrial_grill, restaurant_shanghai, restaurant_kojiro].each do |attributes|
  restaurant = Restaurant.create!(attributes)
  puts "Created #{restaurant.name}"
end

puts "Finished!"
