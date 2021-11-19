# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
#
#
require "open-uri"

Humorist.destroy_all
User.destroy_all
Booking.destroy_all
User.create!(first_name: "Copy", last_name: "Comic", email: "admin@admin.fr", password: "admin00", username: "CopyComic")
file = URI.open('https://cdn.radiofrance.fr/s3/cruiser-production/2021/01/00920a64-382d-45c8-982b-fe098e80bf5f/1136_076_chl_021166.jpg')
Humorist.create!(name: "Coluche", humor_type: "Tout Public", public_target: "Adulte", price_per_hour: 100, address: "Paris", gender: "Homme", age: 77, owner: User.last).photo.attach(io: file, filename: 'coluche.jpg', content_type: 'image/png')
file = URI.open('https://www.moka-mag.com/media/cache/event_detail_main_picture/2020/10/4451-anne-roumanof.jpg')
Humorist.create!(name: "Anne Roumanoff",
                  humor_type: "Tout Public",
                  public_target: "Adulte",
                  price_per_hour: 20,
                  address: "Lyon",
                  gender: "Femme",
                  age: 56,
                  owner: User.last).photo.attach(io: file, filename: 'Anne Roumanoff.jpg', content_type: 'image/png')
file = URI.open('https://photo.theatredurondpoint.info/media/g/115/11537/2805_TDRP-Staff-2013_CC_08_web_550_550.jpg')
Humorist.create!(name: "Gaspard Proust", humor_type: "Noir", public_target: "Adulte", price_per_hour: 25, address: "Marseille", gender: "Homme", age: 45, owner: User.last).photo.attach(io: file, filename: 'Gaspard Proust.jpg', content_type: 'image/png')
file = URI.open('https://fr.web.img3.acsta.net/pictures/19/09/04/10/54/4208420.jpg')
Humorist.create!(name: "Kev Adams", humor_type: "Tout Public", public_target: "Enfant", price_per_hour: 5, address: "Toulouse", gender: "Homme", age: 30, owner: User.last).photo.attach(io: file, filename: 'Kev Adams.jpg', content_type: 'image/png')
file = URI.open('https://fr.web.img4.acsta.net/pictures/20/01/07/11/19/3327191.jpg')
Humorist.create!(name: "Blanche Gardin", humor_type: "Tout Public", public_target: "Adulte", price_per_hour: 54, address: "Nantes", gender: "Femme", age: 44, owner: User.last).photo.attach(io: file, filename: 'Blanche Gardin.jpg', content_type: 'image/png')
file = URI.open('https://pbs.twimg.com/profile_images/1251079718230769665/UwS8b60k_400x400.jpg')
Humorist.create!(name: "Jean-Marie Bigard", humor_type: "Beauf", public_target: "Ado", price_per_hour: 36, address: "Bordeaux", gender: "Homme", age: 67, owner: User.last).photo.attach(io: file, filename: 'Jean-Marie Bigard.jpg', content_type: 'image/png')
file = URI.open('https://www.moka-mag.com/media/cache/person_detail_main_picture/2018/12/3653-serve.php.jpg')
Humorist.create!(name: "Laura Laune", humor_type: "Noir", public_target: "Adulte", price_per_hour: 38, address: "Paris", gender: "Femme", age: 35, owner: User.last).photo.attach(io: file, filename: 'Laura Laune.jpg', content_type: 'image/png')
file = URI.open('https://static1.purepeople.com/articles/6/37/58/66/@/5426702-florence-foresti-a-la-presentation-du-fi-624x600-2.jpg')
Humorist.create!(name: "Florence Foresti", humor_type: "Tout Public", public_target: "Adulte", price_per_hour: 87, address: "Lyon", gender: "Femme", age: 48, owner: User.last).photo.attach(io: file, filename: 'Florence Foresti.jpg', content_type: 'image/png')
file = URI.open('https://premiere.fr/sites/default/files/styles/scale_crop_1280x720/public/plurimedia_import/871995.jpg')
Humorist.create!(name: "Frank Dubosc", humor_type: "Beauf", public_target: "Adulte", price_per_hour: 34, address: "Marseille", gender: "Homme", age: 58, owner: User.last).photo.attach(io: file, filename: 'Frank Dubosc.jpg', content_type: 'image/png')
file = URI.open('https://fr.web.img6.acsta.net/pictures/19/05/20/14/11/2340417.jpg')
Humorist.create!(name: "Gad Elmaleh", humor_type: "Tout Public", public_target: "Ado", price_per_hour: 2, address: "Toulouse", gender: "Homme", age: 50, owner: User.last).photo.attach(io: file, filename: 'Gad Elmaleh.jpg', content_type: 'image/png')
Booking.create!(start_date: "2021-11-29 00:00:00", final_date: "2021-12-04 00:00:00", client: User.last, humorist: Humorist.all.sample)
Booking.create!(start_date: "2021-11-04 00:00:00", final_date: "2021-11-07 00:00:00", client: User.last, humorist: Humorist.all.sample)
Booking.create!(start_date: "2021-11-22 00:00:00", final_date: "2021-11-28 00:00:00", client: User.last, humorist: Humorist.all.sample)
Booking.create!(start_date: "2021-12-22 00:00:00", final_date: "2021-12-28 00:00:00", client: User.last, humorist: Humorist.all.sample)
Booking.create!(start_date: "2021-10-22 00:00:00", final_date: "2021-10-28 00:00:00", client: User.last, humorist: Humorist.all.sample)
