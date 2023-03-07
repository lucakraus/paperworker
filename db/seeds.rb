# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)


Event.destroy_all
User.destroy_all

cristobal = User.create!(email: "cris.cris@gmail.com", password: "123456", first_name: "Cristobal", last_name: "Fernandez")
luca = User.create!(email: "luca.luca@gmail.com", password: "123456", first_name: "Luca", last_name: "Kraus")

paperworker = Event.create!(user_id: User.all.sample.id, email: "luca.luca@gmail.com",first_name: "Luca", last_name: "Kraus")
file = URI.open("https://res.cloudinary.com/dxrk5d6qu/image/upload/v1678199508/paperw%C3%B6rker/profile%20pictures/Luca_dwzaly.jpg")
paperworker.photo.attach(io: file, filename: "Luca.jpeg", content_type: "image/jpeg")
paperworker.save
