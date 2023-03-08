# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
User.destroy_all

# cristobal = User.create!(email: "cris.cris@gmail.com", password: "123456", first_name: "Cristobal", last_name: "Fernandez")
# luca = User.create!(email: "luca.luca@gmail.com", password: "123456", first_name: "Luca", last_name: "Kraus")

paper_worker_luca = User.create!(email: "luca.luca@gmail.com", password: "123456", role: 0, name: "Luca Kraus", languages: ["German", "English", "Japanez"], services: ["translation", "appointment"], rate: "60€ p/h")
file = URI.open("https://res.cloudinary.com/dxrk5d6qu/image/upload/v1678199508/paperw%C3%B6rker/profile%20pictures/Luca_dwzaly.jpg")
#paper_worker_luca.photo.attach(io: file, filename: "Luca.jpeg", content_type: "image/jpeg")
paper_worker_luca.save

paper_worker_akram = User.create!(email: "akram.akram@gmail.com", password: "123456", role: "paperworker", name: "Akram Hassan", languages: ["German", "English", "Arabic"], services: ["translation", "legal"], rate: "50€ p/h")
file = URI.open("https://res.cloudinary.com/dxrk5d6qu/image/upload/v1678199508/paperw%C3%B6rker/profile%20pictures/Akram_pamnuq.jpg")
# paper_worker_akram.photo.attach(io: file, filename: "Akram.jpeg", content_type: "image/jpeg")
paper_worker_akram.save

immigrant_bahareh = User.create!(email: "bahareh.bahareh@gmail.com", password: "123456", role: 1, name: "Bahareh Sammaknejad", languages: ["English", "Arabic", "French"], services: ["translation", "appointment"], rate: "50€ p/h")
file = URI.open("https://res.cloudinary.com/dxrk5d6qu/image/upload/v1678199508/paperw%C3%B6rker/profile%20pictures/Bahareh_xazz83.jpg")
#immigrant_bahareh.photo.attach(io: file, filename: "Bahareh.jpeg", content_type: "image/jpeg")
immigrant_bahareh.save

immigrant_cristobal = User.create!(email: "cris.cris@gmail.com", password: "123456", role: "immigrant", name: "Cristobal Fernandez", languages: ["English", "Spanish", "Italian"], services: ["translation", "legal", "appointment"], rate: "50€ p/h")
file = URI.open("https://res.cloudinary.com/dxrk5d6qu/image/upload/v1678199508/paperw%C3%B6rker/profile%20pictures/Cris_npulji.jpg")
#immigrant_cristobal.photo.attach(io: file, filename: "Cris.jpeg", content_type: "image/jpeg")
immigrant_cristobal.save

