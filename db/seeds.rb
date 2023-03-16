# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
require "date"

puts "hi"

User.destroy_all

# cristobal = User.create!(email: "cris.cris@gmail.com", password: "123456", first_name: "Cristobal", last_name: "Fernandez")
# luca = User.create!(email: "luca.luca@gmail.com", password: "123456", first_name: "Luca", last_name: "Kraus")
immigrant_bahareh = User.create!(email: "bahareh.bahareh@gmail.com", password: "123456", role: 1, name: "Bahareh Sammaknejad", languages: ["English", "Arabic", "French"], services: ["Translation", "Appointment"], rate: "50€ p/h")
file = URI.open("https://res.cloudinary.com/dxrk5d6qu/image/upload/v1678375924/paperw%C3%B6rker/profile%20pictures/Bahareh_hstetc.jpg")
immigrant_bahareh.photo.attach(io: file, filename: "Bahareh.jpeg", content_type: "image/jpeg")
immigrant_bahareh.save

immigrant_cristobal = User.create!(email: "cris.cris@gmail.com", password: "123456", role: "immigrant", name: "Cristobal Fernandez", languages: ["English", "Spanish", "Italian"], services: ["Translation", "Legal", "Appointment"], rate: "50€ p/h", description: "I am a very handsome and clever human being who has been living in Germany for 5 years but I still don't speak the language.")
file = URI.open("https://res.cloudinary.com/dxrk5d6qu/image/upload/v1678375924/paperw%C3%B6rker/profile%20pictures/Cris_e8jnzc.jpg")
immigrant_cristobal.photo.attach(io: file, filename: "Cris.jpeg", content_type: "image/jpeg")
immigrant_cristobal.save

immigrant_cristobal = User.create!(email: "cris@gmail.com", password: "123456", role: "immigrant", name: "Cristobal Fernandez", languages: ["English", "Spanish", "Italian"], services: ["Translation", "Legal", "Appointment"], rate: "50€ p/h", description: "I am a very handsome and clever human being who has been living in Germany for 5 years but I still don't speak the language.")
file = URI.open("https://res.cloudinary.com/dxrk5d6qu/image/upload/v1678375924/paperw%C3%B6rker/profile%20pictures/Cris_e8jnzc.jpg")
immigrant_cristobal.photo.attach(io: file, filename: "Cris.jpeg", content_type: "image/jpeg")
immigrant_cristobal.save

immigrant_pedro = User.create!(email: "peter@gmail.com", password: "123456", role: "immigrant", name: "Pedro Pascal", languages: ["English", "Spanish", "Italian"], services: ["Translation", "Legal", "Appointment"], rate: "50€ p/h", description: "I am a very handsome and clever human being who has been living in Germany for 5 years but I still don't speak the language.")
file = URI.open("https://res.cloudinary.com/dxrk5d6qu/image/upload/v1678375924/paperw%C3%B6rker/profile%20pictures/Cris_e8jnzc.jpg")
immigrant_pedro.photo.attach(io: file, filename: "Cris.jpeg", content_type: "image/jpeg")
immigrant_pedro.save

immigrant_karen = User.create!(email: "karen@gmail.com", password: "123456", role: "immigrant", name: "Karen Smith", languages: ["English", "Spanish", "Italian"], services: ["Translation", "Legal", "Appointment"], rate: "50€ p/h", description: "I am a very handsome and clever human being who has been living in Germany for 5 years but I still don't speak the language.")
file = URI.open("https://res.cloudinary.com/dxrk5d6qu/image/upload/v1678375924/paperw%C3%B6rker/profile%20pictures/Cris_e8jnzc.jpg")
immigrant_karen.photo.attach(io: file, filename: "Cris.jpeg", content_type: "image/jpeg")
immigrant_karen.save

immigrant_ara = User.create!(email: "ara@gmail.com", password: "123456", role: "immigrant", name: "Ara Kim", languages: ["English", "Spanish", "Italian"], services: ["Translation", "Legal", "Appointment"], rate: "50€ p/h", description: "I am a very handsome and clever human being who has been living in Germany for 5 years but I still don't speak the language.")
file = URI.open("https://res.cloudinary.com/dxrk5d6qu/image/upload/v1678375924/paperw%C3%B6rker/profile%20pictures/Cris_e8jnzc.jpg")
immigrant_ara.photo.attach(io: file, filename: "Cris.jpeg", content_type: "image/jpeg")
immigrant_ara.save

immigrant_joao = User.create!(email: "joao@gmail.com", password: "123456", role: "immigrant", name: "João da Silva", languages: ["English", "Spanish", "Italian"], services: ["Translation", "Legal", "Appointment"], rate: "50€ p/h", description: "I am a very handsome and clever human being who has been living in Germany for 5 years but I still don't speak the language.")
file = URI.open("https://res.cloudinary.com/dxrk5d6qu/image/upload/v1678375924/paperw%C3%B6rker/profile%20pictures/Cris_e8jnzc.jpg")
immigrant_joao.photo.attach(io: file, filename: "Cris.jpeg", content_type: "image/jpeg")
immigrant_joao.save

immigrant_ali = User.create!(email: "ali@gmail.com", password: "123456", role: "immigrant", name: "Ali Ahmad", languages: ["English", "Spanish", "Italian"], services: ["Translation", "Legal", "Appointment"], rate: "50€ p/h", description: "I am a very handsome and clever human being who has been living in Germany for 5 years but I still don't speak the language.")
file = URI.open("https://res.cloudinary.com/dxrk5d6qu/image/upload/v1678375924/paperw%C3%B6rker/profile%20pictures/Cris_e8jnzc.jpg")
immigrant_ali.photo.attach(io: file, filename: "Cris.jpeg", content_type: "image/jpeg")
immigrant_ali.save

immigrant_aleksandr = User.create!(email: "aleksandr@gmail.com", password: "123456", role: "immigrant", name: "Aleksandr Melnyk", languages: ["English", "Spanish", "Italian"], services: ["Translation", "Legal", "Appointment"], rate: "50€ p/h", description: "I am a very handsome and clever human being who has been living in Germany for 5 years but I still don't speak the language.")
file = URI.open("https://res.cloudinary.com/dxrk5d6qu/image/upload/v1678375924/paperw%C3%B6rker/profile%20pictures/Cris_e8jnzc.jpg")
immigrant_aleksandr.photo.attach(io: file, filename: "Cris.jpeg", content_type: "image/jpeg")
immigrant_aleksandr.save

immigrant_piros = User.create!(email: "piros@gmail.com", password: "123456", role: "immigrant", name: "Zsófia Piros", languages: ["English", "Spanish", "Italian"], services: ["Translation", "Legal", "Appointment"], rate: "50€ p/h", description: "I am a very handsome and clever human being who has been living in Germany for 5 years but I still don't speak the language.")
file = URI.open("https://res.cloudinary.com/dxrk5d6qu/image/upload/v1678375924/paperw%C3%B6rker/profile%20pictures/Cris_e8jnzc.jpg")
immigrant_piros.photo.attach(io: file, filename: "Cris.jpeg", content_type: "image/jpeg")
immigrant_piros.save

paper_worker_vader = User.create!(email: "vader.vader@gmail.com", password: "123456", role: 0, name: "Cesar Rincon", languages: ["Spanish",	"Korean",	"English"], services: ["Legal",	"Appointment"], rate: "43€ p/h", district: ["Treptow-Köpenick", "Steglitz-Zehlendorf"], description: "Former Jedi turned Sith Lord")
file = URI.open("https://res.cloudinary.com/dxrk5d6qu/image/upload/v1678877770/paperw%C3%B6rker/profile%20pictures/cesar-rincon_ynexyn.jpg")
paper_worker_vader.photo.attach(io: file, filename: "cesar-rincon.jpeg", content_type: "image/jpeg")
paper_worker_vader.save

paper_worker_lannister = User.create!(email: "lannister.lannister@gmail.com", password: "123456", role: 0, name: "Jimmy Fermin", languages: ["English",	"French",	"Portuguese"], services: ["Legal",	"Appointment"], rate: "65€ p/h", district: ["Charlottenburg-Wilmersdorf",	"Spandau"], description: "Queen of the Seven Kingdoms")
file = URI.open("https://res.cloudinary.com/dxrk5d6qu/image/upload/v1678877770/paperw%C3%B6rker/profile%20pictures/jimmy-fermin_p5i4xg.jpg")
paper_worker_lannister.photo.attach(io: file, filename: "jimmy-fermin.jpeg", content_type: "image/jpeg")
paper_worker_lannister.save

paper_worker_curie = User.create!(email: "curie.curie@gmail.com", password: "123456", role: 0, name: "Ayo Ogunseinde", languages: ["Pashto",	"Russian", "Polish"], services: ["Translation", 	"Legal",	"Appointment"], rate: "25€ p/h", district: ["Mitte", "Pankow"], description: "Nobel Prize-winning physicist & chemist")
file = URI.open("https://res.cloudinary.com/dxrk5d6qu/image/upload/v1678877766/paperw%C3%B6rker/profile%20pictures/ayo-ogunseinde_yktl7d.jpg")
paper_worker_curie.photo.attach(io: file, filename: "ayo-ogunseinde.jpeg", content_type: "image/jpeg")
paper_worker_curie.save

paper_worker_hawking = User.create!(email: "hawking.hawking@gmail.com", password: "123456", role: 0, name: "Toa Heftiba", languages: ["English", "French", "Persian"], services: ["Translation", 	"Legal",	"Appointment"], rate: "85€ p/h", district: ["Treptow-Köpenick",	"Lichtenberg"], description: "Theoretical physicist & author")
file = URI.open("https://res.cloudinary.com/dxrk5d6qu/image/upload/v1678877765/paperw%C3%B6rker/profile%20pictures/toa-heftiba_rxjbzq.jpg")
paper_worker_hawking.photo.attach(io: file, filename: "toa-heftiba.jpeg", content_type: "image/jpeg")
paper_worker_hawking.save

paper_worker_goodall = User.create!(email: "goodall.goodall@gmail.com", password: "123456", role: 0, name: "Joseph Gonzalez", languages: ["Spanish",	"French",	"Arabic"], services: ["Translation", 	"Legal",	"Appointment"], rate: "85€ p/h", district: ["Friedrichshain-Kreuzberg",	"Marzahn-Hellersdorf"], description: "Primatologist & conservationist")
file = URI.open("https://res.cloudinary.com/dxrk5d6qu/image/upload/v1678877767/paperw%C3%B6rker/profile%20pictures/joseph-gonzalez_ifgth8.jpg")
paper_worker_goodall.photo.attach(io: file, filename: "joseph-gonzalez.jpeg", content_type: "image/jpeg")
paper_worker_goodall.save

paper_worker_williams = User.create!(email: "williams.williams@gmail.com", password: "123456", role: 0, name: "Aiony Haust", languages: ["Spanish",	"French",	"Arabic"], services: ["Translation", "Appointment"], rate: "34€ p/h", district: ["Friedrichshain-Kreuzberg", "Charlottenburg-Wilmersdorf"], description: "Tennis champion & entrepreneur")
file = URI.open("https://res.cloudinary.com/dxrk5d6qu/image/upload/v1678877766/paperw%C3%B6rker/profile%20pictures/aiony-haust_bmimmk.jpg")
paper_worker_williams.photo.attach(io: file, filename: "aiony-haust.jpeg", content_type: "image/jpeg")
paper_worker_williams.save

paper_worker_streep = User.create!(email: "streep.streep@gmail.com", password: "123456", role: 0, name: "Jack Finnigan", languages: ["Spanish",	"French",	"English"], services: ["Translation", "Appointment"], rate: "56€ p/h", district: ["Friedrichshain-Kreuzberg", "Charlottenburg-Wilmersdorf"], description: "Award-winning actress & philanthropist")
file = URI.open("https://res.cloudinary.com/dxrk5d6qu/image/upload/v1678877765/paperw%C3%B6rker/profile%20pictures/jack-finnigan_dlvu5u.jpg")
paper_worker_streep.photo.attach(io: file, filename: "jack-finnigan.jpeg", content_type: "image/jpeg")
paper_worker_streep.save

paper_worker_marlene = User.create!(email: "marlene.marlene@gmail.com", password: "123456", role: 0, name: "Gabriel Silverio", languages: ["German", "English", "Polish"], services: ["Translation", "Appointment"], rate: "100€ p/h", district: ["Neukölln"], description: "Legendary film icon")
file = URI.open("https://res.cloudinary.com/dxrk5d6qu/image/upload/v1678877778/paperw%C3%B6rker/profile%20pictures/gabriel-silverio_aszf6o.jpg")
paper_worker_marlene.photo.attach(io: file, filename: "gabriel-silverio.jpeg", content_type: "image/jpeg")
paper_worker_marlene.save

paper_worker_harry = User.create!(email: "harry.harry@gmail.com", password: "123456", role: 0, name: "Stefancik Sealkl", languages: ["German", "Chinese", "English"], services: ["Appointment"], rate: "20€ p/h", district: ["Treptow-Köpenick", "Lichtenberg"], description: "Young wizard that battles evil")
file = URI.open("https://res.cloudinary.com/dxrk5d6qu/image/upload/v1678877778/paperw%C3%B6rker/profile%20pictures/stefan-stefancik_sealkl.jpg")
paper_worker_harry.photo.attach(io: file, filename: "stefancik_sealkl.jpeg", content_type: "image/jpeg")
paper_worker_harry.save

paper_worker_bellatrix = User.create!(email: "bellatrix.bellatrix@gmail.com", password: "123456", role: 0, name: "Jurica Koletic", languages: ["German", "Hindi", "Spanish"], services: ["Legal", "Appointment"], rate: "30€ p/h", district: ["Charlottenburg-Wilmersdorf", "Tempelhof-Schöneberg"], description: "Loyal follower of Voldemort")
file = URI.open("https://res.cloudinary.com/dxrk5d6qu/image/upload/v1678877776/paperw%C3%B6rker/profile%20pictures/jjurica-koletic_glhhjw.jpg")
paper_worker_bellatrix.photo.attach(io: file, filename: "jjurica-koletic.jpeg", content_type: "image/jpeg")
paper_worker_bellatrix.save

paper_worker_maria = User.create!(email: "maria.maria@gmail.com", password: "123456", role: 0, name: "Stephanie Liverani", languages: ["German", "Turkish", "Pashto"], services: ["Translation", "Legal"], rate: "120€ p/h", district: ["Steglitz-Zehlendorf", "Neukölln"], description: "Empress of Austria")
file = URI.open("https://res.cloudinary.com/dxrk5d6qu/image/upload/v1678877774/paperw%C3%B6rker/profile%20pictures/stephanie-liverani_rqerhd.jpg")
paper_worker_maria.photo.attach(io: file, filename: "stephanie-liverani.jpeg", content_type: "image/jpeg")
paper_worker_maria.save

paper_worker_julius = User.create!(email: "julius.julius@gmail.com", password: "123456", role: 0, name: "Albert Dera", languages: ["German", "Swahili", "Persian"], services: ["Legal", "Appointment"], rate: "80€ p/h", district: ["Mitte", "Reinickendorf"], description: "Roman general & dictator")
file = URI.open("https://res.cloudinary.com/dxrk5d6qu/image/upload/v1678877774/paperw%C3%B6rker/profile%20pictures/albert-dera_lrmyhp.jpg")
paper_worker_julius.photo.attach(io: file, filename: "albert-dera.jpeg", content_type: "image/jpeg")
paper_worker_julius.save

paper_worker_angela = User.create!(email: "angela.angela@gmail.com", password: "123456", role: 0, name: "Angela Merkel", languages: ["German", "Russian", "English"], services: ["Translation", "Legal"], rate: "135€ p/h", district: ["Mitte", "Pankow"], description: "I'm Angela, the power mom who run Germany like a well-oiled machine for 16 years. I'm all about efficiency, whether organizing politics or bureaucracy appointments. I'm a master of getting things done. #MerkelMagic")
file = URI.open("https://res.cloudinary.com/dxrk5d6qu/image/upload/v1678879102/paperw%C3%B6rker/profile%20pictures/merkel_fd5x2x.jpg")
paper_worker_angela.photo.attach(io: file, filename: "merkel.jpeg", content_type: "image/jpeg")
paper_worker_angela.save

paper_worker_david = User.create!(email: "david.david@gmail.com", password: "123456", role: 0, name: "David Hasselhoff", languages: ["German", "Ukrainian", "Russian"], services: ["Translation", "Appointment"], rate: "40€ p/h", district: ["Marzahn-Hellersdorf", "Treptow-Köpenick"], description: "I'm the Hoffinator. A lifeguard turned pop star. I've saved lives on Baywatch and rocked Germany's music scene. With my signature red jacket and smooth voice, I'm a force to be reckoned with. #Hofftastic")
file = URI.open("https://res.cloudinary.com/dxrk5d6qu/image/upload/v1678375924/paperw%C3%B6rker/profile%20pictures/David_Hasselhoff_yjti2f.jpg")
paper_worker_david.photo.attach(io: file, filename: "david.jpeg", content_type: "image/jpeg")
paper_worker_david.save

paper_worker_cate = User.create!(email: "cate.cate@gmail.com", password: "123456", role: 0, name: "Prince Akachi", languages: ["German", "Turkish", "Swahili"], services: ["Legal"], rate: "23€ p/h", district: ["Pankow"], description: "Award-winning actress")
file = URI.open("https://res.cloudinary.com/dxrk5d6qu/image/upload/v1678877775/paperw%C3%B6rker/profile%20pictures/prince-akachi_qzvr4z.jpg")
paper_worker_cate.photo.attach(io: file, filename: "prince-akachi.jpeg", content_type: "image/jpeg")
paper_worker_cate.save

paper_worker_drake = User.create!(email: "drake.drake@gmail.com", password: "123456", role: 0, name: "Michael Dam", languages: [ "Portuguese", "Turkish", "Swahili"], services: ["Legal"], rate: "43€ p/h", district: ["Pankow"], description: "Chart-topping rapper")
file = URI.open("https://res.cloudinary.com/dxrk5d6qu/image/upload/v1678877776/paperw%C3%B6rker/profile%20pictures/michael-dam_rlx2i9.jpg")
paper_worker_drake.photo.attach(io: file, filename: "michael-dam.jpeg", content_type: "image/jpeg")
paper_worker_drake.save

paper_worker_snoop_dogg = User.create!(email: "snoop.dogg@gmail.com", password: "123456", role: 0, name: "Houcine Cib", languages: ["German", "Portuguese", "English"], services: ["Legal"], rate: "20€ p/h", district: ["Pankow"], description: "Hip-hop legend & actor")
file = URI.open("https://res.cloudinary.com/dxrk5d6qu/image/upload/v1678877775/paperw%C3%B6rker/profile%20pictures/houcine-ncib_vi6jeh.jpg")
paper_worker_snoop_dogg.photo.attach(io: file, filename: "houcine-ncib.jpeg", content_type: "image/jpeg")
paper_worker_snoop_dogg.save

paper_worker_conor_mcgregor = User.create!(email: "conor.conor@gmail.com", password: "123456", role: 0, name: "Tyler Nix", languages: ["German", "Portuguese", "Swahili"], services: ["Legal",	"Appointment"], rate: "50€ p/h", district: ["Pankow"], description: "UFC champion & fighter")
file = URI.open("https://res.cloudinary.com/dxrk5d6qu/image/upload/v1678877775/paperw%C3%B6rker/profile%20pictures/tyler-nix_mmuqop.jpg")
paper_worker_conor_mcgregor.photo.attach(io: file, filename: "tyler-nix.jpeg", content_type: "image/jpeg")
paper_worker_conor_mcgregor.save

paper_worker_michael_schumacher = User.create!(email: "michael.michael@gmail.com", password: "123456", role: 0, name: "Philip Martin", languages: ["German", "Portuguese", "Turkish"], services: ["Legal",	"Appointment"], rate: "75€ p/h", district: ["Pankow"], description: "Formula One racing champion")
file = URI.open("https://res.cloudinary.com/dxrk5d6qu/image/upload/v1678877773/paperw%C3%B6rker/profile%20pictures/philip-martin_lzqr8r.jpg")
paper_worker_michael_schumacher.photo.attach(io: file, filename: "philip-martin.jpeg", content_type: "image/jpeg")
paper_worker_michael_schumacher.save

paper_worker_picard = User.create!(email: "picard.picard@gmail.com", password: "123456", role: 0, name: "Austin Wade", languages: ["Spanish",	"French",	"Korean"], services: ["Translation", 	"Legal",	"Appointment"], rate: "25€ p/h", district: ["Friedrichshain-Kreuzberg", "Tempelhof-Schöneberg"], description: "Captain of the USS Enterprise-D")
file = URI.open("https://res.cloudinary.com/dxrk5d6qu/image/upload/v1678877768/paperw%C3%B6rker/profile%20pictures/austin-wade_eskmbe.jpg")
paper_worker_picard.photo.attach(io: file, filename: "austin-wade.jpeg", content_type: "image/jpeg")
paper_worker_picard.save

paper_worker_luca = User.create!(email: "luca.luca@gmail.com", password: "123456", role: 0, name: "Luca Kraus", languages: ["German", "English", "Spanish"], services: ["Translation", "Appointment"], rate: "60€ p/h", district: ["Charlottenburg-Wilmersdorf", "Spandau"], description: "Hey there! I'm Luca and I love German bureaucracy. The more complicated the better. Official documents, letters no one understands, and non-digital communication are my passions.")
file = URI.open("https://res.cloudinary.com/dxrk5d6qu/image/upload/v1678375925/paperw%C3%B6rker/profile%20pictures/Luca_mk2snl.jpg")
paper_worker_luca.photo.attach(io: file, filename: "Luca.jpeg", content_type: "image/jpeg")
paper_worker_luca.save

paper_worker_akram = User.create!(email: "akram.akram@gmail.com", password: "123456", role: "paperworker", name: "Akram Hassan", languages: ["German", "English", "Arabic"], services: ["Translation", "Legal"], rate: "50€ p/h", district: ["Charlottenburg-Wilmersdorf"], description: "I like coding and fashion; on weekends I challenge my friends to walk-offs")
file = URI.open("https://res.cloudinary.com/dxrk5d6qu/image/upload/v1678375924/paperw%C3%B6rker/profile%20pictures/Akram_cuunl0.jpg")
paper_worker_akram.photo.attach(io: file, filename: "Akram.jpeg", content_type: "image/jpeg")
paper_worker_akram.save

paper_worker_felix = User.create!(email: "felix.felix@gmail.com", password: "123456", role: 0, name: "Felix Cramer", languages: ["German", "English", "Spanish"], services: ["Appointment", "Translation"], rate: "35€ p/h", district: ["Friedrichshain-Kreuzberg", "Pankow"], description: "I love hunting with my cousin in his big old truck, yeehaw!")
file = URI.open("https://res.cloudinary.com/dxrk5d6qu/image/upload/v1678375925/paperw%C3%B6rker/profile%20pictures/felix_fmmdzo.jpg")
paper_worker_felix.photo.attach(io: file, filename: "felix.jpeg", content_type: "image/jpeg")
paper_worker_felix.save

paper_worker_katja = User.create!(email: "katja.katja@gmail.com", password: "123456", role: 0, name: "Katja Löffler", languages: ["German", "Ukrainian", "English"], services: ["Translation"], rate: "40€ p/h", district: ["Mitte", "Pankow"], description: "I enjoy writing code and doing my laundry on Thursday, so I don't need to do it on the weekend")
file = URI.open("https://res.cloudinary.com/dxrk5d6qu/image/upload/v1678375925/paperw%C3%B6rker/profile%20pictures/katja_nx27om.jpg")
paper_worker_katja.photo.attach(io: file, filename: "katja.jpeg", content_type: "image/jpeg")
paper_worker_katja.save

appointment_one = Appointment.create!(date: Date.yesterday, status: "accepted", paperworker_id: paper_worker_angela.id, immigrant_id: immigrant_aleksandr.id)

appointment_two = Appointment.create!(date: Date.yesterday, status: "accepted", paperworker_id: paper_worker_angela.id, immigrant_id: immigrant_karen.id)

appointment_three = Appointment.create!(date: Date.yesterday, status: "accepted", paperworker_id: paper_worker_angela.id, immigrant_id: immigrant_bahareh.id)

appointment_four = Appointment.create!(date: Date.yesterday, status: "accepted", paperworker_id: paper_worker_angela.id, immigrant_id: immigrant_joao.id)

appointment_five = Appointment.create!(date: Date.yesterday, status: "accepted", paperworker_id: paper_worker_angela.id, immigrant_id: immigrant_ali.id)

appointment_six = Appointment.create!(date: Date.yesterday, status: "accepted", paperworker_id: paper_worker_angela.id, immigrant_id: immigrant_piros.id)

review_one = Review.create!(rating: 4, comment: "She got things done. Was a little too serious tho.", user_id: immigrant_aleksandr.id, reviewee_id: paper_worker_angela.id, appointment_id: appointment_one.id)

review_two = Review.create!(rating: 1, comment: "I didn't like her attitude.", user_id: immigrant_karen.id, reviewee_id: paper_worker_angela.id, appointment_id: appointment_two.id)

review_three = Review.create!(rating: 5, comment: "She came saw and conquered.", user_id: immigrant_bahareh.id, reviewee_id: paper_worker_angela.id, appointment_id: appointment_three.id)

review_four = Review.create!(rating: 5, comment: "She was calm, cool, and collected. I am impressed.", user_id: immigrant_joao.id, reviewee_id: paper_worker_angela.id, appointment_id: appointment_four.id)

review_five = Review.create!(rating: 5, comment: "She was very nice and knew exaclty what she was doing!", user_id: immigrant_ali.id, reviewee_id: paper_worker_angela.id, appointment_id: appointment_five.id)

review_six = Review.create!(rating: 5, comment: "She's got the organizational skills of Marie Kondo! I'd vote for her any day.", user_id: immigrant_piros.id, reviewee_id: paper_worker_angela.id, appointment_id: appointment_six.id)

puts "bye"
