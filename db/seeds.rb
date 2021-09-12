# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Category.destroy_all


4.times do 
    Category.create(name:Faker::Commerce.department(max: 2, fixed_amount: true))
end

30.times do
    Product.create(name:Faker::Commerce.product_name, description:Faker::Lorem.paragraph, price:Faker::Commerce.price, on_hand: (5..100).to_a.sample, img_url:Faker::Company.logo, category_id:(1..4).to_a.sample)
end

5.times do
    User.create(username:Faker::Internet.username, address: Faker::Address.full_address, phone:Faker::PhoneNumber.cell_phone, first_name:Faker::Name.first_name, last_name:Faker::Name.last_name)
end

Order.create(user_id:1, paid?:false)
Order.create(user_id:2, paid?:false)
Order.create(user_id:3, paid?:false)

OrderProduct.create(order_id:1, product_id: 1, product_qty:(1..5).to_a.sample)
OrderProduct.create(order_id:1, product_id: 3, product_qty:(1..5).to_a.sample)
OrderProduct.create(order_id:1, product_id: 5, product_qty:(1..5).to_a.sample)
OrderProduct.create(order_id:1, product_id: 7, product_qty:(1..5).to_a.sample)
OrderProduct.create(order_id:1, product_id: 9, product_qty:(1..5).to_a.sample)
OrderProduct.create(order_id:2, product_id: 2, product_qty:(1..5).to_a.sample)
OrderProduct.create(order_id:2, product_id: 4, product_qty:(1..5).to_a.sample)
OrderProduct.create(order_id:2, product_id: 6, product_qty:(1..5).to_a.sample)
OrderProduct.create(order_id:2, product_id: 8, product_qty:(1..5).to_a.sample)
OrderProduct.create(order_id:2, product_id: 10, product_qty:(1..5).to_a.sample)
OrderProduct.create(order_id:2, product_id: 12, product_qty:(1..5).to_a.sample)
OrderProduct.create(order_id:2, product_id: 14, product_qty:(1..5).to_a.sample)
OrderProduct.create(order_id:2, product_id: 16, product_qty:(1..5).to_a.sample)
OrderProduct.create(order_id:2, product_id: 18, product_qty:(1..5).to_a.sample)
OrderProduct.create(order_id:2, product_id: 20, product_qty:(1..5).to_a.sample)
OrderProduct.create(order_id:3, product_id: 30, product_qty:(1..5).to_a.sample)
