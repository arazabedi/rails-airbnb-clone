# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
require 'faker'

user1 = User.create(email: "araz@tess.com", password: "1234567")
100.times do
  Listing.create!(user:user1, name: "#{Faker::Creature::Dog.name}", breed: "#{Faker::Creature::Dog.breed}", description: "#{Faker::Creature::Dog.meme_phrase}", price: "#{Faker::Number.decimal(l_digits: 3, r_digits: 2)}")
end
