# # This file should contain all the record creation needed to seed the database with its default values.
# # The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
# #
# # Examples:
# #
# #   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
# #   Character.create(name: 'Luke', movie: movies.first)


# product = Product.new(name: "sunglasses", price: 20, image_url: "https://www.randomlists.com/img/things/sun_glasses.webp", description: "blue sunglasses with dark lenses")
# product.save

# product = Product.new(name: "eye liner", price: 10, image_url: "https://www.randomlists.com/img/things/eye_liner.webp", description: "black eye liner with sharp tip")
# product.save

# product = Product.new(name: "cd", price: 9, image_url: "https://www.randomlists.com/img/things/cd.webp", description: "1993 Janet Jackson album")
# product.save

# product = Product.new(name: "boat shoe", price: 80, image_url: "https://www.randomlists.com/img/things/shoes.webp", description: "tan boat shoes")
# product.save

# product = Product.new(name: "tweezers", price: 5, image_url: "https://www.randomlists.com/img/things/twezzers.webp", description: "super sharp point tweezers")
# product.save

# product = Product.new(name: "cookie jar", price: 30, image_url: "https://www.randomlists.com/img/things/cookie_jar.webp", description: "cookie monster eat your cookies")
# product.save

# product = Product.new(name: "leg warmers", price: 20, image_url: "https://www.randomlists.com/img/things/leg_warmers.webp", description: "red leg warmers keep leg very warm")
# product.save

# product = Product.new(name: "window", price: 100, image_url: "https://www.randomlists.com/img/things/window.webp", description: "6 pane window -- really nice")
# product.save

# product = Product.new(name: "newspaper", price: 4, image_url: "https://www.randomlists.com/img/things/newspaper.webp", description: "New York Times")
# product.save

# product = Product.new(name: "cork", price: 1, image_url: "https://www.randomlists.com/img/things/cork.webp", description: "keep wine in wine bottle very good")
# product.save


# 100.times do
#   product = Product.new(name: Faker::Commerce.product_name, price: Faker::Number.number(digits: 2), image_url: Faker::Internet.url, description: Faker::Coffee.notes)
#   product.save
# end

# category = Category.new(name: "Home Essentials")
# category.save
# category = Category.new(name: "Makeup")
# category.save
# category = Category.new(name: "Makeup")
# category.save

# new = ProductCategory.new(product_id: 5, category_id: 2)
# new.save
# new = ProductCategory.new(product_id: 6, category_id: 2)
# new.save
# new = ProductCategory.new(product_id: 7, category_id: 2)
# new.save
# new = ProductCategory.new(product_id: 8, category_id: 2)
# new.save
# new = ProductCategory.new(product_id: 9, category_id: 2)
# new.save
# new = ProductCategory.new(product_id: 10, category_id: 2)
# new.save
# new = ProductCategory.new(product_id: 12, category_id: 2)
# new.save
# new = ProductCategory.new(product_id: 13, category_id: 2)
# new.save
# new = ProductCategory.new(product_id: 14, category_id: 3)
# new.save
# new = ProductCategory.new(product_id: 15, category_id: 2)
# new.save
# new = ProductCategory.new(product_id: 16, category_id: 2)
# new.save
# new = ProductCategory.new(product_id: 18, category_id: 2)
# new.save
# new = ProductCategory.new(product_id: 19, category_id: 2)
# new.save
# new = ProductCategory.new(product_id: 20, category_id: 2)
# new.save

new = CartedProduct.new(product_id: 40, user_id: 1, quantity: 1, status: "carted")
new.save
new = CartedProduct.new(product_id: 10, user_id: 1, quantity: 2, status: "carted")
new.save
new = CartedProduct.new(product_id: 21, user_id: 2, quantity: 10, status: "carted")
new.save
new = CartedProduct.new(product_id: 19, user_id: 2, quantity: 3, status: "removed")
new.save
