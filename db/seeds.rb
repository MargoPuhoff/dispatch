# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

Driver.destroy_all
Auto.destroy_all
Trek.destroy_all
Dispatcher.destroy_all

5.times do
  Driver.create(name: Faker::Name.name, email: Faker::Internet.email, phone: Faker::PhoneNumber.cell_phone, password: '123')
end

drivers = Driver.all

Dispatcher.create(name: Faker::Name.name, email: "anna@anna.com", phone: Faker::PhoneNumber.cell_phone, password: '123')
5.times do
  Dispatcher.create(name: Faker::Name.name, email: Faker::Internet.email, phone: Faker::PhoneNumber.cell_phone, password: '123')
end

dispatchers = Dispatcher.all

5.times do
  Auto.create(
    num: Faker::Vehicle.license_plate,
    mark: Faker::Vehicle.make,
    driver: drivers[rand(0..4)]
  )
end

cars = Auto.all

20.times do |i|
  Trek.create(
    trek_date: i.days.ago,
    address: Faker::Address.full_address,
    store: Faker::Locations::Australia.location,
    auto: cars[rand(0..4)],
    dispatcher: dispatchers[rand(0..4)]
  )
end

# Trek.create(trek_date: 1.days.ago, address: "В Адрес", store: "А Склад", auto_id: a.id)
# Trek.create(trek_date: 2.days.ago, address: "П Адрес", store: "Д Склад", auto_id: a1.id)
# Trek.create(trek_date: 3.days.ago, address: "О Адрес", store: "К Склад", auto_id: a2.id)

# id: 5, name: "Maxwell Dietrich", email: "bert@wilkinson.test", phone: "(244) 711-5212",
# id: 10, name: "Msgr. Luciana Stiedemann", email: "fermin.keeling@senger-luettgen.test", phone: "290.503.1691",
