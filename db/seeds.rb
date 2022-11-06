# This will delete any existing rows from the Product and User tables
# so you can run the seed file multiple times without having duplicate entries in your database
puts "Deleting old data..."
Product.destroy_all
User.destroy_all

puts "Creating users..."
user1 = User.create(name: Faker::Name.name)
user2 = User.create(name: Faker::Name.name)
user3 = User.create(name: Faker::Name.name)

user1 = User.create(name: 'Grace Unah')
user2 = User.create(name: 'Eve Keila')
user3 = User.create(name: 'Rodgers Wasilwa')
user4 = User.create(name: 'Jean April')
user5 = User.create(name: 'Ivy Sifuma')

puts "Creating products..."
product1 = Product.create(name: "Stapler", price: 10)
product2 = Product.create(name: "Whiteboard", price: 15)
product3 = Product.create(name: "Dry Erase Markers", price: 5)
product4 = Product.create(name: "Ballpoint Pens", price: 2)
product5 = Product.create(name: "Scotch Tape", price: 3)

p1 = Product.create(name: "Stapler", price: 10)
p2 = Product.create(name: "Whiteboard", price: 15)
p3 = Product.create(name: "Dry Erase Markers", price: 5)
p4 = Product.create(name: "Ballpoint Pens", price: 2)
p5 = Product.create(name: "Scotch Tape", price: 3)

puts "Creating reviews..."
# *****************************************************************
# * TODO: create reviews! Remember, a review belongs to a product *
# * and a review belongs to an user.                              *
# *****************************************************************
# Create Reviews Here

puts "Seeding done!"

Review.create(star_rating: 8, comment: 'I love it', product_id: p1.id, user_id: user1.id)
Review.create(star_rating: 8, comment: 'Gorgeous', product_id: p4.id, user_id: user2.id)
Review.create(star_rating: 7, comment: 'Awesome', product_id: p5.id, user_id: user1.id)
Review.create(star_rating: 4, comment: 'Beautiful', product_id: p2.id, user_id: user5.id)
Review.create(star_rating: 6, comment: 'Worst experience', product_id: p1.id, user_id: user2.id)
Review.create(star_rating: 8, comment: 'Great stuff here', product_id: p3.id, user_id: user1.id)
Review.create(star_rating: 9, comment: 'Super great', product_id: p1.id, user_id: user3.id)
Review.create(star_rating: 2, comment: 'Legit', product_id: p3.id, user_id: user4.id)
Review.create(star_rating: 6, comment: 'I love it', product_id: p4.id, user_id: user3.id)
Review.create(star_rating: 8, comment: 'Cool', product_id: p2.id, user_id: user5.id)

puts "Seeding done!"