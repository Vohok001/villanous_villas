# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#  Property.destroy_all

# Villains Data
User.destroy_all

users = User.create!([
  { email: "drevil@volcano.com", password: "lava1234" },
  { email: "vader@empire.gov", password: "darkside123" },
  { email: "joker@gotham.com", password: "why_so_serious" },
  { email: "magneto@brotherhood.com", password: "metalpower" },
  { email: "sauron@mordor.net", password: "oneringrule" },
  { email: "skeletor@snakemountain.org", password: "powerofgrayskull" },
  { email: "bowser@koopacastle.com", password: "mariogetsit" },
  { email: "goblin@oscorp.com", password: "greengadget" },
  { email: "voldemort@malfoymanor.com", password: "horcruxed" },
  { email: "shredder@technodrome.com", password: "ninjaturtles" },
  { email: "frostbite@glacierpalace.com", password: "coldhearted" },
  { email: "solaris@celestialtower.com", password: "burnbright" },
  { email: "nebula@cosmicobservatory.com", password: "cosmicgaze" },
  { email: "apex@skyfortress.com", password: "highflyer" }
])

# Properties Data
Lair.create!([
  { name: "Volcano Lair", description: "A fiery fortress with lava rivers.", price_per_night: 5000, max_guests: 20, location: "Pacific Ring of Fire", user_id: users[0].id, rating: rand(0..5) },
  { name: "Fortress Vader", description: "A dark, ominous castle on Mustafar.", price_per_night: 10000, max_guests: 15, location: "Mustafar", user_id: users[1].id,rating: rand(0..5) },
  { name: "Abandoned Amusement Park", description: "A spooky park with deadly surprises.", price_per_night: 3500, max_guests: 10, location: "Gotham City", user_id: users[2].id,rating: rand(0..5) },
  { name: "Asteroid M", description: "A space station for mutants.", price_per_night: 12000, max_guests: 25, location: "Earth Orbit", user_id: users[3].id, rating: rand(0..5) },
  { name: "Barad-dûr", description: "The dark tower of Mordor, with stunning views of Mount Doom.", price_per_night: 8000, max_guests: 50, location: "Mordor", user_id: users[4].id,rating: rand(0..5) },
  { name: "Snake Mountain", description: "A sinister fortress with a snake motif.", price_per_night: 4000, max_guests: 30, location: "Eternia", user_id: users[5].id,rating: rand(0..5) },
  { name: "Bowser's Castle", description: "A lava-filled castle with fire traps.", price_per_night: 6000, max_guests: 12, location: "Mushroom Kingdom", user_id: users[6].id,rating: rand(0..5) },
  { name: "Oscorp Penthouse", description: "A high-tech lab with Goblin gadgets.", price_per_night: 4500, max_guests: 8, location: "New York City", user_id: users[7].id,rating: rand(0..5) },
  { name: "Malfoy Manor", description: "A gloomy mansion for dark wizards.", price_per_night: 7500, max_guests: 20, location: "Wiltshire, England", user_id: users[8].id,rating: rand(0..5) },
  { name: "Technodrome", description: "An underground fortress with advanced tech.", price_per_night: 9000, max_guests: 40, location: "New York Sewers", user_id: users[9].id,rating: rand(0..5) },
  { name: "Glacier Palace", description: "A breathtaking ice castle.", price_per_night: 5000, max_guests: 15, location: "Arctic", user_id: users[10].id,rating: rand(0..5) },
  { name: "Celestial Tower", description: "A solar-powered skyscraper.", price_per_night: 6000, max_guests: 18, location: "California", user_id: users[11].id,rating: rand(0..5) },
  { name: "Cosmic Observatory", description: "A space station with star views.", price_per_night: 12000, max_guests: 10, location: "Deep Space", user_id: users[12].id,rating: rand(0..5) },
  { name: "Sky Fortress", description: "A floating fortress above the clouds.", price_per_night: 10000, max_guests: 25, location: "Stratosphere", user_id: users[13].id,rating: rand(0..5) }
])
