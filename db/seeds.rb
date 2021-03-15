# frozen_string_literal: true

require 'faker'

# 15.times do
#   Car.create!(
#     make: Faker::Vehicle.make,
#     model: Faker::Vehicle.model(make_of_model: 'Dodge'),
#     price: Faker::Commerce.price(range: 0..100_000.00),
#     model_year: Faker::Vehicle.year,
#     status: true,
#     user_id: 1,
#     dealership_id: 1
#   )
# end

20.times do
  Car.create!(
    make: Faker::Vehicle.make,
    model: Faker::Vehicle.model(make_of_model: 'Ford'),
    price: Faker::Commerce.price(range: 0..100_000.00),
    model_year: Faker::Vehicle.year,
    status: true,
    user_id: 1,
    dealership_id: 2
  )
end

12.times do
  Car.create!(
    make: Faker::Vehicle.make,
    model: Faker::Vehicle.model(make_of_model: 'Toyota'),
    price: Faker::Commerce.price(range: 0..100_000.00),
    model_year: Faker::Vehicle.year,
    status: true,
    user_id: 1,
    dealership_id: 3
  )
end
