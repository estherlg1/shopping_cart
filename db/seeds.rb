require 'faker'

10.times do
  Product.create(name: Faker::Commerce.product_name, description: Faker::Lorem.paragraph, price: rand(10..999))
end

5.times do
  User.create(email: Faker::Internet.email, encrypted_password: Faker::Internet.password)
end
