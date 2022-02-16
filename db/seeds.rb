# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'faker'

puts "Cleaning database..."
Restaurant.destroy_all

puts "Creating restaurants..."
50.times do
  restaurant = Restaurant.new(category: Restaurant::CATEGORY.sample, name: Faker::Restaurant.name, address: Faker::Address.full_address)
  restaurant.save!
  puts "created #{restaurant.name}"
end
puts "Finished!"
