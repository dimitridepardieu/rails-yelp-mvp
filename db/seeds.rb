# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

puts 'Cleaning database...'
Restaurant.destroy_all

puts 'Creating restaurants...'
aloha = { name: 'Aloha Bar', address: 'Hawaii', phone_number: '0633333333', category: 'belgian' }
little = { name: 'Little Italy', address: 'Italy', phone_number: '0688888888', category: 'italian' }
poke = { name: 'Poke Bar', address: 'Japan', category: 'japanese' }
chouette = { name: 'La Chouette', address: 'Dijon', phone_number: '0399999999', category: 'french' }
jura = { name: 'Le Jura', address: 'Jura', phone_number: '0477777777', category: 'french' }

[aloha, little, poke, chouette, jura].each do |attributes|
  restaurant = Restaurant.create!(attributes)
  puts "Created #{restaurant.name}"
end
puts 'Finished!'
