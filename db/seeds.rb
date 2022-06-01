# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require 'faker'
Restaurant.destroy_all
category = ['chinese', 'italian', 'japanese', 'french', 'belgian']
5.times do
  restaurant_category = category[rand(category.length)]
  Restaurant.create(name: Faker::Food.dish, address: Faker::Address.street_address,
                    phone_number: Faker::Number.leading_zero_number(digits: 10), category: restaurant_category)
end
