# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

100.times do
  User.create!(
    email: Faker::Internet.email,
    password: 'password',
    password_confirmation: 'password',
    uid: Faker::Code.imei,
    provider: ['google', 'facebook', 'microsolf'].sample,
    name: Faker::Name.name,
    birthday: Faker::Date.between(from: '2014-09-23', to: '2023-09-25'),
    phone: Faker::PhoneNumber.phone_number,
    balance: Faker::Number.decimal(l_digits: 2),
    nationality: Faker::Nation.nationality ,
    role: rand(0..3),
    confirm_code: Faker::Stripe.valid_card,
    last_active_at: Faker::Time.between(from: DateTime.now - 10000, to: DateTime.now),
  )
end