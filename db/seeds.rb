# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
# require 'faker'
# require "open-uri"
# require "json"
# Listing.destroy_all
# User.destroy_all
# user1 = User.create(email: "araz@tess.com", password: "1234567", password_confirmation: '1234567')
# 25.times do
#   doggo = Listing.new(user:user1, name: "#{Faker::Creature::Dog.name}", breed: "#{Faker::Creature::Dog.breed}", description: "#{Faker::Creature::Dog.meme_phrase}", price: "#{Faker::Number.decimal(l_digits: 3, r_digits: 2)}")
#   file = URI.open("https://dog.ceo/api/breeds/image/random/1").read
#   file_json = JSON.parse(file)
#   image_link = file_json["message"][0]
#   puts "doggo image --> #{image_link}"
#   image = URI.open(image_link)
#   doggo.photo.attach(io: image, filename: "dogs.jpg", content_type: "image/jpg")
#   doggo.save
# end

Rental.destroy_all
Listing.destroy_all
User.destroy_all

user1 = User.create(email: "araz@tess.com", password: "1234567", password_confirmation: '1234567')
25.times do
  doggo = Listing.new(user:user1, name: "#{Faker::Creature::Dog.name}", breed: "#{Faker::Creature::Dog.breed}", description: "#{Faker::Creature::Dog.meme_phrase}", price: "#{Faker::Number.decimal(l_digits: 3, r_digits: 2)}")
  file = URI.open("https://dog.ceo/api/breeds/image/random/1").read
  file_json = JSON.parse(file)
  image_link = file_json["message"][0]
  puts "doggo image --> #{image_link}"
  image = URI.open(image_link)
  doggo.photo.attach(io: image, filename: "dogs.jpg", content_type: "image/jpg")
  doggo.save
end

Rental.create(start_date: Date.new(), end_date: Date.new(), user: User.last, listing: Listing.last)
