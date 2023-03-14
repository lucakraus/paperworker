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
immigrant_bahareh = User.create!(email: "bahareh.bahareh@gmail.com", password: "123456", role: 1, name: "Bahareh Sammaknejad", languages: ["English", "Arabic", "French"], services: ["Translation", "Appointment"], rate: "50€ p/h")
file = URI.open("https://res.cloudinary.com/dxrk5d6qu/image/upload/v1678375924/paperw%C3%B6rker/profile%20pictures/Bahareh_hstetc.jpg")
immigrant_bahareh.photo.attach(io: file, filename: "Bahareh.jpeg", content_type: "image/jpeg")
immigrant_bahareh.save

immigrant_cristobal = User.create!(email: "cris.cris@gmail.com", password: "123456", role: "immigrant", name: "Cristobal Fernandez", languages: ["English", "Spanish", "Italian"], services: ["Translation", "Legal", "Appointment"], rate: "50€ p/h")
file = URI.open("https://res.cloudinary.com/dxrk5d6qu/image/upload/v1678375924/paperw%C3%B6rker/profile%20pictures/Cris_e8jnzc.jpg")
immigrant_cristobal.photo.attach(io: file, filename: "Cris.jpeg", content_type: "image/jpeg")
immigrant_cristobal.save

paper_worker_luca = User.create!(email: "luca.luca@gmail.com", password: "123456", role: 0, name: "Luca Kraus", languages: ["German", "English", "Spanish"], services: ["Translation", "Appointment"], rate: "60€ p/h", district: ["Charlottenburg-Wilmersdorf", "Spandau"], description: "Hey there! I'm Luca, and I'm a web development enthusiast. I love creating awesome websites that people enjoy using, but one thing fuels my success more than anything else: musli! That's right; I'm absolutely obsessed with this crunchy, delicious breakfast food.")
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

paper_worker_marlene = User.create!(email: "marlene.marlene@gmail.com", password: "123456", role: 0, name: "Marlene Dietrich", languages: ["German", "English", "Polish"], services: ["Translation", "Appointment"], rate: "100€ p/h", district: ["Neukölln"], description: "Legendary film icon")
file = URI.open("https://res.cloudinary.com/dxrk5d6qu/image/upload/v1678375926/paperw%C3%B6rker/profile%20pictures/marlene-_dn5xvw.jpg")
paper_worker_marlene.photo.attach(io: file, filename: "marlene.jpeg", content_type: "image/jpeg")
paper_worker_marlene.save

paper_worker_harry = User.create!(email: "harry.harry@gmail.com", password: "123456", role: 0, name: "Harry Potter", languages: ["German", "Chinese", "English"], services: ["Appointment"], rate: "20€ p/h", district: ["Treptow-Köpenick", "Lichtenberg"], description: "Young wizard that battles evil")
file = URI.open("https://res.cloudinary.com/dxrk5d6qu/image/upload/v1678375925/paperw%C3%B6rker/profile%20pictures/harry_amdpfz.jpg")
paper_worker_harry.photo.attach(io: file, filename: "harry.jpeg", content_type: "image/jpeg")
paper_worker_harry.save

paper_worker_bellatrix = User.create!(email: "bellatrix.bellatrix@gmail.com", password: "123456", role: 0, name: "Bellatrix Lestrange", languages: ["German", "Hindi", "Spanish"], services: ["Legal", "Appointment"], rate: "30€ p/h", district: ["Charlottenburg-Wilmersdorf", "Tempelhof-Schöneberg"], description: "Loyal follower of Voldemort")
file = URI.open("https://res.cloudinary.com/dxrk5d6qu/image/upload/v1678375925/paperw%C3%B6rker/profile%20pictures/bellatrix_vajeds.jpg")
paper_worker_bellatrix.photo.attach(io: file, filename: "bellatrix .jpeg", content_type: "image/jpeg")
paper_worker_bellatrix.save

paper_worker_maria = User.create!(email: "maria.maria@gmail.com", password: "123456", role: 0, name: "Maria Theresia", languages: ["German", "Turkish", "Pashto"], services: ["Translation", "Legal"], rate: "120€ p/h", district: ["Steglitz-Zehlendorf", "Neukölln"], description: "Empress of Austria")
file = URI.open("https://res.cloudinary.com/dxrk5d6qu/image/upload/v1678375925/paperw%C3%B6rker/profile%20pictures/Maria_Theresia_ceqgjb.jpg")
paper_worker_maria.photo.attach(io: file, filename: "Maria Theresia.jpeg", content_type: "image/jpeg")
paper_worker_maria.save

paper_worker_julius = User.create!(email: "julius.julius@gmail.com", password: "123456", role: 0, name: "Julius Caesar", languages: ["German", "Swahili", "Persian"], services: ["Legal", "Appointment"], rate: "80€ p/h", district: ["Mitte", "Reinickendorf"], description: "Roman general & dictator")
file = URI.open("https://res.cloudinary.com/dxrk5d6qu/image/upload/v1678375925/paperw%C3%B6rker/profile%20pictures/Julius_Caesar_fmdnl2.jpg")
paper_worker_julius.photo.attach(io: file, filename: "Julius Caesar.jpeg", content_type: "image/jpeg")
paper_worker_julius.save

paper_worker_angela = User.create!(email: "angela.angela@gmail.com", password: "123456", role: 0, name: "Angela Merkel", languages: ["German", "Russian", "English"], services: ["Translation", "Legal"], rate: "135€ p/h", district: ["Mitte"], description: "Former German chancellor")
file = URI.open("https://res.cloudinary.com/dxrk5d6qu/image/upload/v1678375924/paperw%C3%B6rker/profile%20pictures/Angela_Merkel_s1roq8.jpg")
paper_worker_angela.photo.attach(io: file, filename: "angela.jpeg", content_type: "image/jpeg")
paper_worker_angela.save

paper_worker_david = User.create!(email: "david.david@gmail.com", password: "123456", role: 0, name: "David Hasselhoff", languages: ["German", "Ukrainian", "Russian"], services: ["Translation", "Appointment"], rate: "40€ p/h", district: ["Marzahn-Hellersdorf", "Treptow-Köpenick"], description: "'80s TV heartthrob and lifeguard")
file = URI.open("https://res.cloudinary.com/dxrk5d6qu/image/upload/v1678375924/paperw%C3%B6rker/profile%20pictures/David_Hasselhoff_yjti2f.jpg")
paper_worker_david.photo.attach(io: file, filename: "david.jpeg", content_type: "image/jpeg")
paper_worker_david.save

paper_worker_cate = User.create!(email: "cate.cate@gmail.com", password: "123456", role: 0, name: "Cate Blanchett", languages: ["German", "Turkish", "Swahili"], services: ["Legal"], rate: "23€ p/h", district: ["Pankow"], description: "Award-winning actress")
file = URI.open("https://res.cloudinary.com/dxrk5d6qu/image/upload/v1678375925/paperw%C3%B6rker/profile%20pictures/Cate_Blanchett_nzbj50.jpg")
paper_worker_cate.photo.attach(io: file, filename: "cate.jpeg", content_type: "image/jpeg")
paper_worker_cate.save

paper_worker_drake = User.create!(email: "drake.drake@gmail.com", password: "123456", role: 0, name: "Drake", languages: [ "Portuguese", "Turkish", "Swahili"], services: ["Legal"], rate: "43€ p/h", district: ["Pankow"], description: "Chart-topping rapper")
file = URI.open("https://res.cloudinary.com/dxrk5d6qu/image/upload/v1678377171/paperw%C3%B6rker/profile%20pictures/drake_obtenk.jpg")
paper_worker_drake.photo.attach(io: file, filename: "drake.jpeg", content_type: "image/jpeg")
paper_worker_drake.save

paper_worker_snoop_dogg = User.create!(email: "snoop.dogg@gmail.com", password: "123456", role: 0, name: "Snoop Dogg", languages: ["German", "Portuguese", "English"], services: ["Legal"], rate: "20€ p/h", district: ["Pankow"], description: "Hip-hop legend & actor")
file = URI.open("https://res.cloudinary.com/dxrk5d6qu/image/upload/v1678377453/paperw%C3%B6rker/profile%20pictures/snoop_dogg_drkvzx.jpg")
paper_worker_snoop_dogg.photo.attach(io: file, filename: "snoop_dogg.jpeg", content_type: "image/jpeg")
paper_worker_snoop_dogg.save

paper_worker_conor_mcgregor = User.create!(email: "conor.conor@gmail.com", password: "123456", role: 0, name: "Conor Mcgregor", languages: ["German", "Portuguese", "Swahili"], services: ["Legal",	"Appointment"], rate: "50€ p/h", district: ["Pankow"], description: "UFC champion & fighter")
file = URI.open("https://res.cloudinary.com/dxrk5d6qu/image/upload/v1678378119/paperw%C3%B6rker/profile%20pictures/conor_mcgregor_i7x3zf.jpg")
paper_worker_conor_mcgregor.photo.attach(io: file, filename: "conor_mcgregor.jpeg", content_type: "image/jpeg")
paper_worker_conor_mcgregor.save

paper_worker_michael_schumacher = User.create!(email: "michael.michael@gmail.com", password: "123456", role: 0, name: "Michael Schumacher", languages: ["German", "Portuguese", "Turkish"], services: ["Legal",	"Appointment"], rate: "75€ p/h", district: ["Pankow"], description: "Formula One racing champion")
file = URI.open("https://res.cloudinary.com/dxrk5d6qu/image/upload/v1678378114/paperw%C3%B6rker/profile%20pictures/michael_schumacher_j2z00l.jpg")
paper_worker_michael_schumacher.photo.attach(io: file, filename: "michael_schumacher.jpeg", content_type: "image/jpeg")
paper_worker_michael_schumacher.save

paper_worker_picard = User.create!(email: "picard.picard@gmail.com", password: "123456", role: 0, name: "Jean-Luc Picard", languages: ["Spanish",	"French",	"Korean"], services: ["Translation", 	"Legal",	"Appointment"], rate: "25€ p/h", district: ["Friedrichshain-Kreuzberg", "Tempelhof-Schöneberg"], description: "Captain of the USS Enterprise-D")
file = URI.open("https://res.cloudinary.com/dxrk5d6qu/image/upload/v1678785928/paperw%C3%B6rker/profile%20pictures/picard_h2glg4.jpg")
paper_worker_picard.photo.attach(io: file, filename: "Jean-Luc Picard.jpeg", content_type: "image/jpeg")
paper_worker_picard.save

paper_worker_vader = User.create!(email: "vader.vader@gmail.com", password: "123456", role: 0, name: "Darth Vader", languages: ["Spanish",	"Korean",	"English"], services: ["Legal",	"Appointment"], rate: "43€ p/h", district: ["Treptow-Köpenick", "Steglitz-Zehlendorf"], description: "Former Jedi turned Sith Lord")
file = URI.open("https://res.cloudinary.com/dxrk5d6qu/image/upload/v1678786462/paperw%C3%B6rker/profile%20pictures/Darth_Vader_zjuxsw.jpg")
paper_worker_vader.photo.attach(io: file, filename: "Darth Vader.jpeg", content_type: "image/jpeg")
paper_worker_vader.save

paper_worker_lannister = User.create!(email: "lannister.lannister@gmail.com", password: "123456", role: 0, name: "Cersei Lannister", languages: ["English",	"French",	"Portuguese"], services: ["Legal",	"Appointment"], rate: "65€ p/h", district: ["Charlottenburg-Wilmersdorf",	"Spandau"], description: "Queen of the Seven Kingdoms")
file = URI.open("https://res.cloudinary.com/dxrk5d6qu/image/upload/v1678786717/paperw%C3%B6rker/profile%20pictures/Cersei_Lannister_nzkdkj.jpg")
paper_worker_lannister.photo.attach(io: file, filename: "Cersei Lannister.jpeg", content_type: "image/jpeg")
paper_worker_lannister.save

paper_worker_curie = User.create!(email: "curie.curie@gmail.com", password: "123456", role: 0, name: "Marie Curie", languages: ["Pashto",	"Russian", "Polish"], services: ["Translation", 	"Legal",	"Appointment"], rate: "25€ p/h", district: ["Mitte", "Pankow"], description: "Nobel Prize-winning physicist & chemist")
file = URI.open("https://res.cloudinary.com/dxrk5d6qu/image/upload/v1678786915/paperw%C3%B6rker/profile%20pictures/Marie_Curie_umi0gf.jpg")
paper_worker_curie.photo.attach(io: file, filename: "Marie Curie.jpeg", content_type: "image/jpeg")
paper_worker_curie.save

paper_worker_hawking = User.create!(email: "hawking.hawking@gmail.com", password: "123456", role: 0, name: "Stephen Hawking", languages: ["English", "French", "Persian"], services: ["Translation", 	"Legal",	"Appointment"], rate: "85€ p/h", district: ["Treptow-Köpenick",	"Lichtenberg"], description: "Theoretical physicist & author")
file = URI.open("https://res.cloudinary.com/dxrk5d6qu/image/upload/v1678787546/paperw%C3%B6rker/profile%20pictures/Stephen_Hawking_x6hos5.jpg")
paper_worker_hawking.photo.attach(io: file, filename: "Stephen Hawking.jpeg", content_type: "image/jpeg")
paper_worker_hawking.save

paper_worker_goodall = User.create!(email: "goodall.goodall@gmail.com", password: "123456", role: 0, name: "Jane Goodall", languages: ["Spanish",	"French",	"Arabic"], services: ["Translation", 	"Legal",	"Appointment"], rate: "85€ p/h", district: ["Friedrichshain-Kreuzberg",	"Marzahn-Hellersdorf"], description: "Primatologist & conservationist")
file = URI.open("https://res.cloudinary.com/dxrk5d6qu/image/upload/v1678787804/paperw%C3%B6rker/profile%20pictures/Jane_Goodall_h5gjo4.jpg")
paper_worker_goodall.photo.attach(io: file, filename: "Jane Goodall.jpeg", content_type: "image/jpeg")
paper_worker_goodall.save

paper_worker_williams = User.create!(email: "williams.williams@gmail.com", password: "123456", role: 0, name: "Serena Williams", languages: ["Spanish",	"French",	"Arabic"], services: ["Translation", "Appointment"], rate: "34€ p/h", district: ["Friedrichshain-Kreuzberg", "Charlottenburg-Wilmersdorf"], description: "Tennis champion & entrepreneur")
file = URI.open("https://res.cloudinary.com/dxrk5d6qu/image/upload/v1678788056/paperw%C3%B6rker/profile%20pictures/Serena-Williams_ge4rb1.jpg")
paper_worker_williams.photo.attach(io: file, filename: "Serena Williams.jpeg", content_type: "image/jpeg")
paper_worker_williams.save

paper_worker_streep = User.create!(email: "streep.streep@gmail.com", password: "123456", role: 0, name: "Meryl Streep", languages: ["Spanish",	"French",	"English"], services: ["Translation", "Appointment"], rate: "56€ p/h", district: ["Friedrichshain-Kreuzberg", "Charlottenburg-Wilmersdorf"], description: "Award-winning actress & philanthropist")
file = URI.open("https://res.cloudinary.com/dxrk5d6qu/image/upload/v1678788878/paperw%C3%B6rker/profile%20pictures/Meryl_Streep_vzgyqd.jpg")
paper_worker_streep.photo.attach(io: file, filename: "Meryl Streep.jpeg", content_type: "image/jpeg")
paper_worker_streep.save
