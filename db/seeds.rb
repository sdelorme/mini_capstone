# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

index = []

product1 = Product.new(name: "sunglasses", price: 20, image_url: "https://www.randomlists.com/img/things/sun_glasses.webp", description: "blue sunglasses with dark lenses")
product2 = Product.new(name: "eye liner", price: 10, image_url: "https://www.randomlists.com/img/things/eye_liner.webp", description: "black eye liner with sharp tip")
product3 = Product.new(name: "cd", price: 9, image_url: "https://www.randomlists.com/img/things/cd.webp", description: "1993 Janet Jackson album")
product4 = Product.new(name: "boat shoe", price: 80, image_url: "https://www.randomlists.com/img/things/shoes.webp", description: "tan boat shoes")
product5 = Product.new(name: "tweezers", price: 5, image_url: "https://www.randomlists.com/img/things/twezzers.webp", description: "super sharp point tweezers")
product6 = Product.new(name: "cookie jar", price: 30, image_url: "https://www.randomlists.com/img/things/cookie_jar.webp", description: "cookie monster eat your cookies")
product7 = Product.new(name: "leg warmers", price: 20, image_url: "https://www.randomlists.com/img/things/leg_warmers.webp", description: "red leg warmers keep leg very warm")
product8 = Product.new(name: "window", price: 100, image_url: "https://www.randomlists.com/img/things/window.webp", description: "6 pane window -- really nice")
product9 = Product.new(name: "newspaper", price: 4, image_url: "https://www.randomlists.com/img/things/newspaper.webp", description: "New York Times")
product10 = Product.new(name: "cork", price: 1, image_url: "https://www.randomlists.com/img/things/cork.webp", description: "keep wine in wine bottle very good")

index << product1
index << product2
index << product3
index << product4
index << product5
index << product6
index << product7
index << product8
index << product9
index << product10
