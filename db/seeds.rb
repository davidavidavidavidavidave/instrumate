# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
require 'faker'

User.destroy_all
puts "Users deleted"
Instrument.destroy_all
puts "Intruments deleted"
User.create!(
  email: "test@email.com",
  password: "123456"
)
puts "creating instruments"

Instrument.create!(
      genre: 'Orchestral',
      name: 'Violin',
      price: 35,
      location: '18 Godric Square, Peterborough PE2 7JL',
      description: 'Stradivarious junior model. Beautiful sound when you play it with your teeth. Try it!',
      user_id: User.last.id
    )
    puts "Instrument added: #{Instrument.last.name}"


    Instrument.create!(
      genre: 'World',
      name: 'Kora',
      price: 48,
      location: '217 London Rd, Cheltenham GL52 6HY',
      description: 'Get the calm vibes out to your audience. You will want to bliss out all day and night with this one!',
      user_id: User.last.id
    )
    puts "Instrument added: #{Instrument.last.name}"

    Instrument.create!(
      genre: 'Pop',
      name: 'Drum Kit',
      price: 60,
      location: 'St Marys Rd, London W5 5RF',
      description: 'BANG! BANG! BANG! Its a fine way to spend your day... and again; BANG! BANG! BANG!',
      user_id: User.last.id
    )
    puts "Instrument added: #{Instrument.last.name}"


    Instrument.create!(
      genre: 'Electronic',
      name: 'Synthesizer',
      price: 125,
      location: 'Asthall Gardens, London IG6 1EX',
      description: 'Glide up and down on this and make any sound you want!',
      user_id: User.last.id
    )
    puts "Instrument added: #{Instrument.last.name}"


    Instrument.create!(
      genre: 'Rock',
      name: 'Guitar',
      price: 55,
      location: '53 Corbet Ave, Norwich NR7 8HS',
      description: 'You too can be Jimi Hendrix with this beuatiful strat!',
      user_id: User.last.id
    )
    puts "Instrument added: #{Instrument.last.name}"


    Instrument.create!(
      genre: 'Orchestral',
      name: 'Trumpet',
      price: 30,
      location: '74-77 Magdalen Rd, Oxford OX4 1RE',
      description: 'parp-piddle-arp! de dum de dum oh so lovely you say?',
      user_id: User.last.id
    )
    puts "Instrument added: #{Instrument.last.name}"

# 5.times do
#   Instrument.create!(
#     genre: Faker::Music.genre,
#     name: Faker::Music.instrument,
#     price: Faker::Number.decimal(l_digits: 2),
#     location: Faker::Address.state,
#     description: Faker::ChuckNorris.fact,
#     user_id: User.last.id
#   )
#   puts "Instrument added: #{Instrument.last.name}"
# end


# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

# puts "Cleaning up database..."
# # Booking.destroy_all
# # User.destroy_all
# # Hat.destroy_all
# puts "Database cleaned"


# User.create!(email: "gnome@gmail.com", password: 123456, first_name: "Pri", last_name: "Finkler")
# puts "Users created"

# Hat.create(
#   style: 'Beanie',
#   color: 'Purple',
#   price: 13, user_id: User.all.sample.id,
#   image_url: 'purple-beanie.jpeg',
#   description: "Add a touch of whimsical charm to your gnome's wardrobe with our Purple Beanie Hat! Crafted with care, this cozy accessory features a rich shade of purple that perfectly complements any gnome's attire. Made from soft, high-quality materials, the beanie ensures warmth and comfort during chilly adventures. Its classic design is adorned with intricate stitching and a playful pom-pom on top. Elevate your gnome's style while keeping them snug in this delightful Purple Beanie Hat.")

# Hat.create(
#   style: 'Romantic',
#   color: 'Earthy',
#   price: 18, user_id: User.all.sample.id,
#   image_url: 'romantic-cowboy.jpeg',
#   description: "Enhance your gnome's allure with our Romantic Cowboy Hat featuring a delicate flower. This charming accessory seamlessly melds rustic cowboy vibes with a touch of floral elegance. With its earthy brown tones and wide brim, it offers style and protection. The intricately crafted mini flower adds whimsy and romance, making it a must-have for enchanting gnome escapades. Elevate your gnome's style today!")

# Hat.create(
#   style: 'Beret',
#   color: 'Blush Pink',
#   price: 21, user_id: User.all.sample.id,
#   image_url: 'pink-beret.jpeg',
#   description: "Unleash your gnome's inner whimsy with our Pink Beret! Bursting with enchantment and dipped in a delightful shade of pink, this beret is the ultimate expression of playful style. Whether your gnome is embarking on fantastical journeys or simply enjoying a gnome gathering, the Pink Beret is the perfect accessory to spark joy and curiosity. Elevate your gnome's fashion game with a touch of enchantment today!")

# Hat.create(
#   style: 'Biker',
#   color: 'Denim Blue',
#   price: 12, user_id: User.all.sample.id,
#   image_url: 'biker-hat.jpeg',
#   description: "Rev up your gnome's style with our Denim Biker Hat! Designed to ignite a sense of adventure, this hat boasts a rugged denim texture that's perfect for the gnome who loves to hit the open road. Whether your gnome is cruising through the gnome village or embarking on daring escapades, the Denim Biker Hat adds a touch of cool, rebel flair. Get ready to rock and roll with this gnome-approved accessory that's all about embracing the spirit of the open gnome highway!")

# Hat.create(
#   style: 'Furry',
#   color: 'Bear Brown',
#   price: 39, user_id: User.all.sample.id,
#   image_url: 'furry-hat.jpeg',
#   description: "Embrace the frosty enchantment of winter with our Furry Gnome Hat! Crafted to keep your gnome cozy in the chilliest of seasons, this hat is a warm embrace of comfort and style. Featuring soft, plush fur that adds a touch of luxury, it's perfect for snowy adventures and heartwarming gatherings. Whether your gnome is building snow forts or sharing tales by the fire, our Winter Furry Hat is the ideal companion for frosty escapades. Bundle up your gnome in comfort and charm!")

# Hat.create(
#   style: 'Beanie',
#   color: 'Orange',
#   price: 17,
#   user_id: User.all.sample.id,
#   image_url: 'orange-beanie.jpeg',
#   description: 'Top off your gnome-tastic look with our Gnome Beanie Hats! Infuse your style with a touch of woodland whimsy, keeping your noggin warm and your gnome spirit high. From frosty mornings to magical nights, these beanies are your ticket to gnome chic!')

# Hat.create!(
#   style: 'Fedora',
#   color: 'Brown',
#   price: 15,
#   user_id: User.all.sample.id,
#   image_url: 'fedora-hat.jpeg',
#   description: 'Elevate your style with a touch of whimsy! Our gnome Fedora hats blend classic sophistication with playful charm, adding a dash of enchantment to any outfit. Step into a world where fashion meets fantasy!')

# Hat.create!(
#   style: 'Baseball Cap',
#   color: 'Blue',
#   price: 8,
#   user_id: User.all.sample.id,
#   image_url: 'baseball-cap.jpeg',
#   description: 'Score a home run for gnome style with our Gnome Baseball Hats! From garden strolls to gnome adventures, these hats blend comfort and cuteness for a winning look. Step up to the plate and hit a fashion grand slam!')

# Hat.create(
#   style: 'Sun Hat',
#   color: 'Brown',
#   price: 16,
#   user_id: User.all.sample.id,
#   image_url: 'sun-hat.jpeg',
#   description: 'Shade and style unite in our Gnome Sun Hats! Embrace sunny days with gnome flair as these hats keep you cool and charming. Whether tending to your gnome garden or exploring, radiate elegance while staying sun-smart!')

# Hat.create(
#   style: 'Fashionable Cowboy',
#   color: 'Caramel',
#   price: 31, user_id: User.all.sample.id,
#   image_url: 'fashionable-cowboy.jpeg',
#   description: "Elevate your gnome's style to the next level with our Colorful Cowboy Hat! Bursting with vibrant hues and fashion-forward flair, this hat is the epitome of gnomish chic. Whether your gnome is wrangling garden adventures or two-stepping through gnome gatherings, this hat brings a playful twist to classic cowboy charm. The Colorful Cowboy Hat is a statement piece that celebrates individuality and spirit, making it a must-have for gnomes who dare to stand out in the most stylish way.")

# Hat.create(
#   style: 'Cowboy',
#   color: 'Brown',
#   price: 11, user_id: User.all.sample.id,
#   image_url: 'cowboy-hat.jpeg',
#   description: 'Saddle up for gnome adventures with our Gnome Cowboy Hats! Rustle up a blend of wild west charm and whimsical magic as you explore the gnome frontier. From dusty trails to gnome rodeos, ride in style and let your inner cowboy gnome shine!')

# Hat.create(
#   style: 'Vintage Police',
#   color: 'Navy',
#   price: 15, user_id: User.all.sample.id,
#   image_url: 'police-hat.jpeg',
#   description: 'Join the Gnome Patrol in style with our Gnome Police Hats! From gnome-sized investigations to keeping your gnome community safe, these hats add a touch of authority and charm to your look. Stand tall, stay vigilant, and let your inner gnome officer lead the way!')

# Hat.create(
#   style: 'Panama',
#   color: 'Dark Brown',
#   price: 14, user_id: User.all.sample.id,
#   image_url: 'panama-hat.jpeg',
#   description: "Add a touch of timeless elegance to your gnome's wardrobe with our Panama Hat! Crafted with meticulous care, this hat exudes sophistication and charm. Whether your gnome is exploring hidden nooks or lounging in the garden, the Panama Hat offers a classic look that transcends seasons. Its finely woven design and airy feel make it a perfect choice for sunny escapades. Elevate your gnome's style and embrace the essence of timeless fashion with our exquisite Panama Hat.")

# puts "Hats created"
