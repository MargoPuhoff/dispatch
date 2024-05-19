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
Driver.create(name: "Водитель 2", email: "email2@email.com", phone: "222")
Driver.create(name: "Водитель 3", email: "email3@email.com", phone: "333")
Driver.create(name: "Водитель 4", email: "email4@email.com", phone: "44")

Auto.create(status: 1, num: "1ааа11", mark: "Марка 1")
Auto.create(status: 1, num: "1ббб11", mark: "Марка 2")
Auto.create(status: 1, num: "1ввв11", mark: "Марка 1")
Auto.create(status: 1, num: "1ггг11", mark: "Марка 2", driver_id: d.id)