# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

Visit.delete_all
User.delete_all
Site.delete_all
Category.delete_all

puts "Seeding categories..."
architecture = Category.create(name: "Architecture")
events = Category.create(name: "Event/Story")
object = Category.create(name: "Object")
food_drink = Category.create(name: "Food/Drink")
nature = Category.create(name: "Nature")

puts "Seeding users..."
matt = User.create(username: "Matt")
mike = User.create(username: "Mike")
ann = User.create(username: "Ann")

puts "Seeding sites..."
petes_tavern = Site.create(name: "Pete's Tavern", lat: 40.73653, long: -73.986746, description: "Tavern built in 1829 at 129 East 18th Street")
statue_of_liberty = Site.create(name: "Statue of Liberty", lat: 40.689167, long:  -74.044444, description: "Big green statue of a lady in the harbor")
central_park = Site.create(name: "Central Park", lat: 40.782222, long: -73.965278, description: "Big green park in the middle of the island")

food_drink.sites << petes_tavern
architecture.sites << statue_of_liberty
nature.sites << central_park

puts "Seeding visits..."
petes_tavern.visits.create(user: matt, rating: 4, comment: "Was pretty cool, had some drinks.")
central_park.visits.create(user: matt, rating: 5, comment: "Was great! Lots of amazing birds.")
central_park.visits.create(user: mike, rating: 3, comment: "Was a little boring, but still nice to get fresh air.")
statue_of_liberty.visits.create(user: ann, rating: 0, comment: "Overcrowded.")

puts "Seeding complete!"