# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

d = Driver.create(name: "Водитель 1", email: "email1@email.com", phone: "111")
d1 = Driver.create(name: "А Водитель 2", email: "email2@email.com", phone: "222")
d2 = Driver.create(name: "Т Водитель 3", email: "email3@email.com", phone: "333")
d3 = Driver.create(name: "Г Водитель 4", email: "email4@email.com", phone: "44")

a = Auto.create(status: 1, num: "1ааа11", mark: "А Марка 1", driver_id: d1.id)
a1 = Auto.create(status: 1, num: "1ббб11", mark: "Г Марка 2", driver_id: d2.id)
a2 = Auto.create(status: 1, num: "1ввв11", mark: "Д Марка 1", driver_id: d3.id)
a3 = Auto.create(status: 1, num: "1ггг11", mark: "У Марка 2", driver_id: d.id)

Trek.create(trek_date: 1.days.ago, address: "В Адрес", store: "А Склад", auto_id: a.id)
Trek.create(trek_date: 2.days.ago, address: "П Адрес", store: "Д Склад", auto_id: a1.id)
Trek.create(trek_date: 3.days.ago, address: "О Адрес", store: "К Склад", auto_id: a2.id)