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
  { email: "apex@skyfortress.com", password: "highflyer" },
  { email: "test@test.com", password: "password" }
])

# Properties Data
Lair.create!([
  { name: "Volcano Lair", tagline: "A fiery fortress with lava rivers.", description: "Nestled in the heart of the Pacific Ring of Fire, this lair offers stunning views of molten lava flows. The property includes 10 en-suite bedrooms with heat-resistant furnishings, a magma observation deck, and a luxurious volcanic spa. Perfect for fiery meetings or volcanic solitude.", price_per_night: 5000,
    max_guests: 20, location: "Pacific Ring of Fire", user_id: users[0].id, rating: rand(3..5) },
  { name: "Fortress Vader", tagline: "A dark, ominous castle on Mustafar.", description: "Perched on the lava-filled planet Mustafar, this fortress features 8 bedrooms, a meditation chamber, and a fully equipped conference room for intergalactic meetings. Enjoy a private lava river and cutting-edge technology.", price_per_night: 10000,
    max_guests: 15, location: "Mustafar", user_id: users[1].id, rating: rand(3..5) },
  { name: "Abandoned Amusement Park", tagline: "A spooky park with deadly surprises.", description: "A chilling amusement park in Gotham City with eerie rides and haunted attractions. Includes 5 themed bedrooms and a central hall for gatherings, making it ideal for hosting sinister soirées.", price_per_night: 3500,
    max_guests: 10, location: "Gotham City", user_id: users[2].id, rating: rand(3..5) },
  { name: "Asteroid M", tagline: "A space station for mutants.", description: "A sprawling space station orbiting Earth, featuring 15 private suites, a zero-gravity gym, and panoramic views of the cosmos. Designed for high-tech comfort and ultimate privacy.", price_per_night: 12000,
    max_guests: 25, location: "Earth Orbit", user_id: users[3].id, rating: rand(3..5) },
  { name: "Barad-dûr", tagline: "The dark tower of Mordor, with stunning views of Mount Doom.", description: "A legendary tower in the heart of Mordor, featuring 25 rooms with gothic architecture and fiery views. Amenities include a throne room, an observation deck, and a dungeon for your foes.", price_per_night: 8000,
    max_guests: 50, location: "Mordor", user_id: users[4].id, rating: rand(3..5) },
  { name: "Snake Mountain", tagline: "A sinister fortress with a snake motif.", description: "Located in Eternia, this lair boasts 10 intricately designed snake-themed suites, an underground lair with advanced security, and a hidden escape tunnel.", price_per_night: 4000,
    max_guests: 30, location: "Eternia", user_id: users[5].id, rating: rand(3..5) },
  { name: "Bowser's Castle", tagline: "A lava-filled castle with fire traps.", description: "This classic lair features 6 fortified rooms, a private lava pool, and fireball-shooting statues. Perfect for fiery retreats or strategic planning.", price_per_night: 6000,
    max_guests: 12, location: "Mushroom Kingdom", user_id: users[6].id, rating: rand(3..5) },
  { name: "Oscorp Penthouse", tagline: "A high-tech lab with Goblin gadgets.", description: "Located in the heart of New York City, this penthouse includes 4 luxury bedrooms, a high-tech lab, and a rooftop garden. Designed for both work and play.", price_per_night: 4500,
    max_guests: 8, location: "New York City", user_id: users[7].id, rating: rand(3..5) },
  { name: "Malfoy Manor", tagline: "A gloomy mansion for dark wizards.", description: "A stately mansion in Wiltshire featuring 10 grand bedrooms, a dark library, and enchanted grounds. Ideal for magical gatherings or secluded retreats.", price_per_night: 7500,
    max_guests: 20, location: "Wiltshire, England", user_id: users[8].id, rating: rand(3..5) },
  { name: "Technodrome", tagline: "An underground fortress with advanced tech.", description: "This high-tech lair in New York's sewers includes 20 industrial-style bedrooms, a robotics lab, and a war room for tactical planning. Highly secure and well-equipped.", price_per_night: 9000,
    max_guests: 40, location: "New York Sewers", user_id: users[9].id, rating: rand(3..5) },
  { name: "Glacier Palace", tagline: "A breathtaking ice castle.", description: "A stunning palace in the Arctic featuring 7 icy suites, a private ice bar, and a ballroom that glimmers in the frost. Perfect for winter wonderland enthusiasts.", price_per_night: 5000,
    max_guests: 15, location: "Arctic", user_id: users[10].id, rating: rand(3..5) },
  { name: "Celestial Tower", tagline: "A solar-powered skyscraper.", description: "This futuristic skyscraper in California features 8 eco-friendly suites, solar-powered amenities, and a rooftop observatory for stargazing. Perfect for sustainable luxury.", price_per_night: 6000,
    max_guests: 18, location: "California", user_id: users[11].id, rating: rand(3..5) },
  { name: "Cosmic Observatory", tagline: "A space station with star views.", description: "A breathtaking outpost in deep space featuring 5 suites with panoramic views, a state-of-the-art telescope, and an anti-gravity lounge. Ideal for stargazers and cosmic explorers.", price_per_night: 12000,
    max_guests: 10, location: "Deep Space", user_id: users[12].id, rating: rand(3..5) },
  { name: "Sky Fortress", tagline: "A floating fortress above the clouds.", description: "Suspended high above the stratosphere, this lair includes 12 sky-view suites, a luxurious cloud lounge, and breathtaking sunsets. Perfect for those seeking serenity and altitude.", price_per_night: 10000,
    max_guests: 25, location: "Stratosphere", user_id: users[13].id, rating: rand(3..5) }
])

