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
Humorist.create!(name: "Coluche", humor_type: "Tout Public", public_target: "Adulte", price_per_hour: 100, address: "Paris", gender: "Homme", age: 77, owner: User.last)
Humorist.create!(name: "Anne Roumanoff", humor_type: "Tout Public", public_target: "Adultes", price_per_hour: 20, address: "Lyon", gender: "Femme", age: 56, owner: User.last)
Humorist.create!(name: "Gaspard Proust", humor_type: "Noir", public_target: "Adulte", price_per_hour: 25, address: "Marseille", gender: "Homme", age: 45, owner: User.last)
Humorist.create!(name: "Kev Adams", humor_type: "Tout Public", public_target: "Enfant", price_per_hour: 5, address: "Toulouse", gender: "Homme", age: 30, owner: User.last)
Humorist.create!(name: "Blanche Gardin", humor_type: "Tout Public", public_target: "Adulte", price_per_hour: 54, address: "Nantes", gender: "Femme", age: 44, owner: User.last)
Humorist.create!(name: "Jean-Marie Bigard", humor_type: "Beauf", public_target: "Ado", price_per_hour: 36, address: "Bordeaux", gender: "Homme", age: 67, owner: User.last)
Humorist.create!(name: "Laura Laune", humor_type: "Noir", public_target: "Adulte", price_per_hour: 38, address: "Paris", gender: "Femme", age: 35, owner: User.last)
Humorist.create!(name: "Florence Foresti", humor_type: "Tout Public", public_target: "Adulte", price_per_hour: 87, address: "Lyon", gender: "Femme", age: 48, owner: User.last)
Humorist.create!(name: "Frank Dubosc", humor_type: "Beauf", public_target: "Adulte", price_per_hour: 34, address: "Marseille", gender: "Homme", age: 58, owner: User.last)
Humorist.create!(name: "Gad Elmaleh", humor_type: "Tout Public", public_target: "Ado", price_per_hour: 2, address: "Toulouse", gender: "Homme", age: 50, owner: User.last)
# Booking.create!(price: 150, start_date: DateTime.now, final_date: DateTime.now, client: User.last, humorist: Humorist.last)
