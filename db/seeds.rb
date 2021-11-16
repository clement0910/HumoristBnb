# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
#
#

Humorist.create!(name: "clement", humor_type: "Noir", public_target: "Adulte", price_per_hour: 100, owner: User.last)
Booking.create!(price: 150, start_date: DateTime.now, final_date: DateTime.now, client: User.last, humorist: Humorist.last)


