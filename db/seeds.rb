# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
#
#
Humorist.destroy_all
User.destroy_all
User.create!(first_name: "admin", last_name: "admin", email: "admin@admin.fr", password: "admin00", username: "admin")
Humorist.create!(name: "clement", humor_type: "Noir", public_target: "Adulte", price_per_hour: 100, owner: User.last)
Humorist.create!(name: "Marc Dutroux", humor_type: "Tout Public", public_target: "Enfant", price_per_hour: 1, gender: "child-friendly", owner: User.last)
Humorist.create!(name: "Hadolf Hitler", humor_type: "Enfantin", public_target: "Adulte", price_per_hour: 100, gender: "Envahisseur", owner: User.last)
Humorist.create!(name: "Tonton Raciste", humor_type: "Beauf", public_target: "Ado", price_per_hour: 5, weight: "325", owner: User.last)
Humorist.create!(name: "Jean-Marie Le-Pen", humor_type: "Enfantin", public_target: "Adulte", price_per_hour: 15, weight: "758", owner: User.last, age: 95, gender: "gros sac", size: 180)
# Booking.create!(price: 150, start_date: DateTime.now, final_date: DateTime.now, client: User.last, humorist: Humorist.last)
