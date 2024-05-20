# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

d1 = Driver.create(name: "Наталья", email: "natal@natal.com", phone: "111")
d2 = Driver.create(name: "Иван", email: "ivan@ivan.com", phone: "222")
d3 = Driver.create(name: "Алексей", email: "alex@alex.com", phone: "333")
d4 = Driver.create(name: "Анастасия", email: "anast@anast.com", phone: "444")

a1 = Auto.create(status: 1, num: "1ааа11", mark: "А Марка", driver_id: d1.id)
a2 = Auto.create(status: 1, num: "1ббб11", mark: "Г Марка", driver_id: d2.id)
a3 = Auto.create(status: 1, num: "1ввв11", mark: "Д Марка", driver_id: d3.id)
a4 = Auto.create(status: 1, num: "1ггг11", mark: "У Марка", driver_id: d4.id)
a5 = Auto.create(status: 0, num: "1ддд11", mark: "А Марка", driver_id: d2.id)

dis1 = Dispatcher.create(name: "Анна", email: "anna@anna.com", phone: "555", password: "anna123")
dis2 = Dispatcher.create(name: "Мария", email: "maria@maria.com", phone: "666", password: "maria123")
dis3 = Dispatcher.create(name: "Владимир", email: "vlad@vlad.com", phone: "777", password: "vlad123")
dis4 = Dispatcher.create(name: "Павел", email: "pavel@pavel.com", phone: "888", password: "pavel123")

Trek.create(trek_date: 1.days.ago, address: "А Адрес", store: "1 Склад", auto_id: a2.id, dispatcher_id: dis1.id)
Trek.create(trek_date: 1.days.ago, address: "Б Адрес", store: "3 Склад", auto_id: a1.id, dispatcher_id: dis2.id)
Trek.create(trek_date: 1.days.ago, address: "В Адрес", store: "2 Склад", auto_id: a3.id, dispatcher_id: dis3.id)
Trek.create(trek_date: 2.days.ago, address: "А Адрес", store: "2 Склад", auto_id: a4.id, dispatcher_id: dis4.id)
Trek.create(trek_date: 2.days.ago, address: "В Адрес", store: "1 Склад", auto_id: a4.id, dispatcher_id: dis4.id)
Trek.create(trek_date: 2.days.ago, address: "Б Адрес", store: "3 Склад", auto_id: a2.id, dispatcher_id: dis3.id)
Trek.create(trek_date: 3.days.ago, address: "А Адрес", store: "1 Склад", auto_id: a3.id, dispatcher_id: dis2.id)
Trek.create(trek_date: 3.days.ago, address: "В Адрес", store: "3 Склад", auto_id: a1.id, dispatcher_id: dis1.id)