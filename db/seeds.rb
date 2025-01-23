# This is where you can create initial data for your app.
# puts 'Creating restaurants...'
# tour_d_argent = Restaurant.new(name: "La Tour d'Argent")
# tour_d_argent.save!

# chez_gladines = Restaurant.new(name: 'Chez Gladines')
# chez_gladines.save!
# puts 'Finished!'

require 'faker'
require 'open-uri'
Restaurant.destroy_all

# puts 'Creating 50 restaurants...'
# 50.times do
#   restaurant = Restaurant.new(
#     name: Faker::Restaurant.name,
#     address: Faker::Address.city,
#     rating: rand(0..5)
#   )
#   restaurant.save!
# end

url = 'https://gist.githubusercontent.com/yannklein/5d8f9acb1c22549a4ede848712ed651a/raw/3daec24bcd833f0dd3bcc8cee8616a731afd1f37/cafe.json'

json = URI.open(url).read
cafes = JSON.parse(json)
cafes.each do |cafe_hash|
  Restaurant.create!(
    name: cafe_hash['title'],
    address: cafe_hash['address'],
    rating: rand(0..5)
  )
end

puts 'Finished!'
