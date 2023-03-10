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
immigrant_bahareh = User.create!(email: "bahareh.bahareh@gmail.com", password: "123456", role: 1, name: "Bahareh Sammaknejad", languages: ["English", "Arabic", "French"], services: ["translation", "appointment"], rate: "50€ p/h")
file = URI.open("https://res.cloudinary.com/dxrk5d6qu/image/upload/v1678375924/paperw%C3%B6rker/profile%20pictures/Bahareh_hstetc.jpg")
immigrant_bahareh.photo.attach(io: file, filename: "Bahareh.jpeg", content_type: "image/jpeg")
immigrant_bahareh.save

immigrant_cristobal = User.create!(email: "cris.cris@gmail.com", password: "123456", role: "immigrant", name: "Cristobal Fernandez", languages: ["English", "Spanish", "Italian"], services: ["translation", "legal", "appointment"], rate: "50€ p/h")
file = URI.open("https://res.cloudinary.com/dxrk5d6qu/image/upload/v1678375924/paperw%C3%B6rker/profile%20pictures/Cris_e8jnzc.jpg")
immigrant_cristobal.photo.attach(io: file, filename: "Cris.jpeg", content_type: "image/jpeg")
immigrant_cristobal.save

paper_worker_luca = User.create!(email: "luca.luca@gmail.com", password: "123456", role: 0, name: "Luca Kraus", languages: ["German", "English", "Japanese"], services: ["translation", "appointment"], rate: "60€ p/h", district: ["Charlottenburg-Wilmersdorf", "Spandau"], description: "As a paperworker i'm dedicated to work tirelessly in order to help others in need. I have lived many years here in Berlin so i gethered a lot of information to provide the assistant for people struggling through the Bureaucracy. Moreover, I understand how hard it can be to deal with difficult situations or complicated problems, which is why I approach each task with empathy and compassion. Overall, I consider myself to be a dedicated and hardworking worker who is committed to helping others in need.")
file = URI.open("https://res.cloudinary.com/dxrk5d6qu/image/upload/v1678375925/paperw%C3%B6rker/profile%20pictures/Luca_mk2snl.jpg")
paper_worker_luca.photo.attach(io: file, filename: "Luca.jpeg", content_type: "image/jpeg")
paper_worker_luca.save

paper_worker_akram = User.create!(email: "akram.akram@gmail.com", password: "123456", role: "paperworker", name: "Akram Hassan", languages: ["German", "English", "Arabic"], services: ["translation", "legal"], rate: "50€ p/h", district: ["Charlottenburg-Wilmersdorf"])
file = URI.open("https://res.cloudinary.com/dxrk5d6qu/image/upload/v1678375924/paperw%C3%B6rker/profile%20pictures/Akram_cuunl0.jpg")
paper_worker_akram.photo.attach(io: file, filename: "Akram.jpeg", content_type: "image/jpeg")
paper_worker_akram.save

paper_worker_felix = User.create!(email: "felic.felix@gmail.com", password: "123456", role: 0, name: "Felix Cramer", languages: ["German", "English", "Spanish"], services: ["appointment"], rate: "5€ p/h", district: ["Friedrichshain-Kreuzberg"], description: "Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet. Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet.")
file = URI.open("https://res.cloudinary.com/dxrk5d6qu/image/upload/v1678375925/paperw%C3%B6rker/profile%20pictures/felix_fmmdzo.jpg")
paper_worker_felix.photo.attach(io: file, filename: "Luca.jpeg", content_type: "image/jpeg")
paper_worker_felix.save

paper_worker_katja = User.create!(email: "katja.katja@gmail.com", password: "123456", role: 0, name: "Katja Löffler", languages: ["German", "Ukrainian"], services: ["translation"], rate: "40€ p/h", district: ["Mitte", "Pankow"], description: "Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet. Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet.")
file = URI.open("https://res.cloudinary.com/dxrk5d6qu/image/upload/v1678375925/paperw%C3%B6rker/profile%20pictures/katja_nx27om.jpg")
paper_worker_katja.photo.attach(io: file, filename: "Luca.jpeg", content_type: "image/jpeg")
paper_worker_katja.save

paper_worker_marlene = User.create!(email: "marlene.marlene@gmail.com", password: "123456", role: 0, name: "Marlene Dietrich", languages: ["German", "English", "Polish"], services: ["translation", "appointment"], rate: "100€ p/h", district: ["Neukölln"], description: "Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet. Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet.")
file = URI.open("https://res.cloudinary.com/dxrk5d6qu/image/upload/v1678375926/paperw%C3%B6rker/profile%20pictures/marlene-_dn5xvw.jpg")
paper_worker_marlene.photo.attach(io: file, filename: "Luca.jpeg", content_type: "image/jpeg")
paper_worker_marlene.save

paper_worker_harry = User.create!(email: "harry.harry@gmail.com", password: "123456", role: 0, name: "Harry Potter", languages: ["German", "Chinese"], services: ["appointment"], rate: "20€ p/h", district: ["Treptow-Köpenick", "Lichtenberg"], description: "Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet. Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet.")
file = URI.open("https://res.cloudinary.com/dxrk5d6qu/image/upload/v1678375925/paperw%C3%B6rker/profile%20pictures/harry_amdpfz.jpg")
paper_worker_harry.photo.attach(io: file, filename: "Luca.jpeg", content_type: "image/jpeg")
paper_worker_harry.save

paper_worker_bellatrix = User.create!(email: "bellatrix.bellatrix@gmail.com", password: "123456", role: 0, name: "Bellatrix Lestrange", languages: ["German", "Hindi"], services: ["legal", "appointment"], rate: "30€ p/h", district: ["Charlottenburg-Wilmersdorf", "Tempelhof-Schöneberg"], description: "Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet. Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet.")
file = URI.open("https://res.cloudinary.com/dxrk5d6qu/image/upload/v1678375925/paperw%C3%B6rker/profile%20pictures/bellatrix_vajeds.jpg")
paper_worker_bellatrix.photo.attach(io: file, filename: "Luca.jpeg", content_type: "image/jpeg")
paper_worker_bellatrix.save

paper_worker_maria = User.create!(email: "maria.maria@gmail.com", password: "123456", role: 0, name: "Maria Theresia", languages: ["German", "Turkish", "Pashto"], services: ["translation"], rate: "120€ p/h", district: ["Steglitz-Zehlendorf", "Neukölln"], description: "Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet. Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet.")
file = URI.open("https://res.cloudinary.com/dxrk5d6qu/image/upload/v1678375925/paperw%C3%B6rker/profile%20pictures/Maria_Theresia_ceqgjb.jpg")
paper_worker_maria.photo.attach(io: file, filename: "Luca.jpeg", content_type: "image/jpeg")
paper_worker_maria.save

paper_worker_julius = User.create!(email: "julius.julius@gmail.com", password: "123456", role: 0, name: "Julius Caesar", languages: ["German", "Swahili", "Persian"], services: ["legal", "appointment"], rate: "80€ p/h", district: ["Mitte", "Reinickendorf"], description: "Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet. Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet.")
file = URI.open("https://res.cloudinary.com/dxrk5d6qu/image/upload/v1678375925/paperw%C3%B6rker/profile%20pictures/Julius_Caesar_fmdnl2.jpg")
paper_worker_julius.photo.attach(io: file, filename: "Luca.jpeg", content_type: "image/jpeg")
paper_worker_julius.save

paper_worker_angela = User.create!(email: "angela.angela@gmail.com", password: "123456", role: 0, name: "Angela Merkel", languages: ["German", "Russian"], services: ["translation", "legal"], rate: "200€ p/h", district: ["Mitte"], description: "Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet. Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet.")
file = URI.open("https://res.cloudinary.com/dxrk5d6qu/image/upload/v1678375924/paperw%C3%B6rker/profile%20pictures/Angela_Merkel_s1roq8.jpg")
paper_worker_angela.photo.attach(io: file, filename: "angela.jpeg", content_type: "image/jpeg")
paper_worker_angela.save

paper_worker_david = User.create!(email: "david.david@gmail.com", password: "123456", role: 0, name: "David Hasselhoff", languages: ["German", "Ukrainian"], services: ["translation", "appointment"], rate: "40€ p/h", district: ["Marzahn-Hellersdorf", "Treptow-Köpenick"], description: "Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet. Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet.")
file = URI.open("https://res.cloudinary.com/dxrk5d6qu/image/upload/v1678375924/paperw%C3%B6rker/profile%20pictures/David_Hasselhoff_yjti2f.jpg")
paper_worker_david.photo.attach(io: file, filename: "david.jpeg", content_type: "image/jpeg")
paper_worker_david.save

paper_worker_cate = User.create!(email: "cate.cate@gmail.com", password: "123456", role: 0, name: "Cate Blanchett", languages: ["German", "Portuguese", "Turkish", "Swahili"], services: ["legal"], rate: "200€ p/h", district: ["Pankow"], description: "Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet. Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet.")
file = URI.open("https://res.cloudinary.com/dxrk5d6qu/image/upload/v1678375925/paperw%C3%B6rker/profile%20pictures/Cate_Blanchett_nzbj50.jpg")
paper_worker_cate.photo.attach(io: file, filename: "cate.jpeg", content_type: "image/jpeg")
paper_worker_cate.save

paper_worker_drake = User.create!(email: "drake.drake@gmail.com", password: "123456", role: 0, name: "Drake", languages: ["German", "Portuguese", "Turkish", "Swahili"], services: ["legal"], rate: "200€ p/h", district: ["Pankow"], description: "Professional procrastinator seeking someone to watch Netflix with. I have a PhD in sarcasm and a black belt in dad jokes")
file = URI.open("https://res.cloudinary.com/dxrk5d6qu/image/upload/v1678377171/paperw%C3%B6rker/profile%20pictures/drake_obtenk.jpg")
paper_worker_drake.photo.attach(io: file, filename: "drake.jpeg", content_type: "image/jpeg")
paper_worker_drake.save

paper_worker_snoop_dogg = User.create!(email: "snoop.dogg@gmail.com", password: "123456", role: 0, name: "Snoop Dogg", languages: ["German", "Portuguese", "Turkish", "Swahili"], services: ["legal"], rate: "200€ p/h", district: ["Pankow"], description: "Professional procrastinator seeking someone to watch Netflix with. I have a PhD in sarcasm and a black belt in dad jokes")
file = URI.open("https://res.cloudinary.com/dxrk5d6qu/image/upload/v1678377453/paperw%C3%B6rker/profile%20pictures/snoop_dogg_drkvzx.jpg")
paper_worker_snoop_dogg.photo.attach(io: file, filename: "snoop_dogg.jpeg", content_type: "image/jpeg")
paper_worker_snoop_dogg.save

paper_worker_conor_mcgregor = User.create!(email: "conor.conor@gmail.com", password: "123456", role: 0, name: "Conor Mcgregor", languages: ["German", "Portuguese", "Turkish", "Swahili"], services: ["legal"], rate: "200€ p/h", district: ["Pankow"], description: "Professional procrastinator seeking someone to watch Netflix with. I have a PhD in sarcasm and a black belt in dad jokes")
file = URI.open("https://res.cloudinary.com/dxrk5d6qu/image/upload/v1678378119/paperw%C3%B6rker/profile%20pictures/conor_mcgregor_i7x3zf.jpg")
paper_worker_conor_mcgregor.photo.attach(io: file, filename: "conor_mcgregor.jpeg", content_type: "image/jpeg")
paper_worker_conor_mcgregor.save

paper_worker_michael_schumacher = User.create!(email: "michael.michael@gmail.com", password: "123456", role: 0, name: "Michael Schumacher", languages: ["German", "Portuguese", "Turkish", "Swahili"], services: ["legal"], rate: "200€ p/h", district: ["Pankow"], description: "Professional procrastinator seeking someone to watch Netflix with. I have a PhD in sarcasm and a black belt in dad jokes")
file = URI.open("https://res.cloudinary.com/dxrk5d6qu/image/upload/v1678378114/paperw%C3%B6rker/profile%20pictures/michael_schumacher_j2z00l.jpg")
paper_worker_michael_schumacher.photo.attach(io: file, filename: "michael_schumacher.jpeg", content_type: "image/jpeg")
paper_worker_michael_schumacher.save
