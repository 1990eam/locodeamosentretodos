puts "Cleaning DB"
User.destroy_all
puts "Done cleaning"
puts ""

puts "Creating Users..."

pablo = User.create!(first_name: "Pablo",
                    last_name: "Andrizzi",
                    email: "test@test.com",
                    description: "Analista de Procurement/Automation. Buscando expandir conocimientos y experiencia para poder desenvolverme como developer freelance en el exterior.",
                    password:"test1234", admin: true)
pablo.photo.attach(io:URI.open("https://avatars1.githubusercontent.com/u/61561129?s=460&u=6e2ed6bcc6469699e7f7952b0c38cdd5a9373699&v=4"),
                  filename: "#{pablo.first_name}.png",
                  content_type: 'image/png')

amy = User.create!(first_name: "Amy",
                    last_name: "Camacho",
                    email: "test2@test.com",
                    description: "Psicóloga Clinica, Maestria en Psico-oncología. Con mucho interés en el mundo de la tecnología y muchas ganas de aprender.",
                    password:"test1234")
amy.photo.attach(io:URI.open("https://avatars1.githubusercontent.com/u/61168741?s=460&u=ed128ee2185429d93df7b91cbd30b2aea0c61947&v=4"),
                  filename: "#{amy.first_name}.png",
                  content_type: 'image/png')

tomas = User.create!(first_name: "Tomas",
                    last_name: "Hergott",
                    email: "test3@test.com",
                    description: "I'm passionate about technology, education and business!",
                    password:"test1234")
tomas.photo.attach(io: File.open("app/assets/images/foto-tomy.jpg"),
                  filename: "#{tomas.first_name}.jpeg",
                  content_type: 'image/jpg')

elian = User.create!(first_name: "Elián",
                    last_name: "Magni",
                    email: "test4@test.com",
                    description: "Buenos Aires, Argentina | Ingeniería UNTREF | LeWagon Batch #384 | Estudiante de Ingeniería, intentando cambiar de trabajo y enfrentar nuevos desafíos.",
                    password:"test1234")
elian.photo.attach(io:URI.open("https://avatars2.githubusercontent.com/u/46629749?s=460&u=23951b92127ebdc8cdac564a824ca0f262a85645&v=4"),
                  filename: "#{elian.first_name}.png",
                  content_type: 'image/png')

nadia = User.create!(first_name: "Nadia",
                    last_name: "Salmen",
                    email: "test5@test.com",
                    description: "Industrial engineer experienced in supply chain, logistics and business planning.",
                    password:"test1234")
nadia.photo.attach(io:URI.open("https://avatars1.githubusercontent.com/u/60677572?s=400&u=340d262a796f1ebb274beedb339b3d1e05bd28ee&v=4"),
                  filename: "#{nadia.first_name}.png",
                  content_type: 'image/png')

armando = User.create!(first_name: "Armando",
                    last_name: "Terán",
                    email: "test6@test.com",
                    description: "I am an English teacher and would like to take my lessons to the next level. I would like to give foreign language students tools to motivate them and guide them through their learning journey.",
                    password:"test1234")
armando.photo.attach(io:URI.open("https://avatars2.githubusercontent.com/u/61909748?s=460&u=b04a687a319bd95e2a847db72904de04bab75c10&v=4"),
                  filename: "#{armando.first_name}.png",
                  content_type: 'image/png')

juanpablo = User.create!(first_name: "Juan Pablo",
                    last_name: "Castiglioni",
                    email: "test7@test.com",
                    description: "Working in engineering, and wanting to improve and expand my programming capabilities, to use in my current work and to expand my career options.",
                    password:"test1234")
juanpablo.photo.attach(io:URI.open("https://avatars0.githubusercontent.com/u/31377374?s=400&u=137efe0bc4787436000d81dc2272ec5c9f761daf&v=4"),
                  filename: "#{juanpablo.first_name}.png",
                  content_type: 'image/png')

mauricio = User.create!(first_name: "Mauricio",
                    last_name: "Mas",
                    email: "test8@test.com",
                    description: "Ingeniero químico apasionado por la tecnología. Experiencia en procesos productivos y mejora continua. Actualmente desarrollando actividades en la industria de manufactura con deseo de hacer un cambio de carrera hacia lo tecnológico.",
                    password:"test1234")
mauricio.photo.attach(io:URI.open("https://avatars0.githubusercontent.com/u/57006186?s=400&u=42a27c233467761a58f34f4c5646c855cc98be96&v=4"),
                  filename: "#{mauricio.first_name}.jpg",
                  content_type: 'image/png')

ernesto = User.create!(first_name: "Ernesto",
                    last_name: "Alvarado",
                    email: "test9@test.com",
                    description: "Soy Ingeniero Electromecánico con ganas de aprender a codificar para mejorar mi perfil profesional y combinar la ingeniería con la programación.",
                    password:"test1234")
ernesto.photo.attach(io:URI.open("https://avatars1.githubusercontent.com/u/59773487?s=460&u=960111d7bdda6a2cbb104246cb0ea6f83cbe0b76&v=4"),
                  filename: "#{ernesto.first_name}.png",
                  content_type: 'image/png')

juan = User.create!(first_name: "Juan",
                    last_name: "Ceschin",
                    email: "test10@test.com",
                    description: "Industrial Engineer with more than 2 years of experience in Management Consulting. Gaining technical skills in order to build products that improve people´s life.",
                    password:"test1234")
juan.photo.attach(io:URI.open("https://avatars3.githubusercontent.com/u/61086902?s=400&u=bb015c5b7472efccee958e9e65900bd64e61a945&v=4"),
                  filename: "#{juan.first_name}.png",
                  content_type: 'image/png')

puts "Done creating Users"
puts ""

puts "Creating Projects..."
lcet = Project.find_or_create_by!(name: "TeamAppsis",
                                 description: "Desarrolla tus skills como developer colaborando con otros, postula tus ideas como project owner o sumate con capital!",
                                 link_1: "http://github.com/1990eam/locodeamosentretodos",
                                 link_2: "https://www.lewagon.com", sponsored: true,
                                 user_id: elian.id)
lcet.photo.attach(io: File.open(Dir.pwd + "/app/assets/images/logo.png"),
                     filename: "#{lcet.name}.png",
                     content_type: 'image/png')
lcet.save


atm = Project.find_or_create_by!(name: "Donde Estan los ATM?",
                                 description: "Accede a la ubicacion de los cajeros con dinero disponible",
                                 link_1: "https://github.com/nbouad/atm-repo",
                                 link_2: "www.loteriadesanluis.com",
                                 user_id: tomas.id)
atm.photo.attach(io: File.open(Dir.pwd + "/app/assets/images/atm.png"),
                     filename: "#{atm.name}.png",
                     content_type: 'image/png')
atm.save

laliga = Project.find_or_create_by!(name: "La Liga",
                                   description: "Apreta en las subastas judiciales con nosotros y gana maravillosos premios",
                                   link_1: "https://www.clarin.com/policiales/videos-hundieron-liga-millonaria-mafia-remates-inmobiliarios_0_f-QbiFIjT.html",
                                   sponsored: true,
                                   user_id: amy.id)
laliga.photo.attach(io:URI.open("https://www.logopik.com/wp-content/uploads/edd/2018/08/Mafia-Logo.png"),
                     filename: "#{laliga.name}.png",
                     content_type: 'image/png')
laliga.save

gfreight = Project.find_or_create_by!(name: "GreenFreight",
                                     description: "Ayudanos a transportar cargas reduciendo la huella de carbono y ahorrando costos a transportistas y clientes",
                                     link_1: "https://en.wikipedia.org/wiki/Hugo_Moyano",
                                     link_2: "https://github.com/getsentry/freight",
                                     user_id: nadia.id)
gfreight.photo.attach(io: File.open(Dir.pwd + "/app/assets/images/greenfreight.jpg"),
                     filename: "#{gfreight.name}.jpg",
                     content_type: 'image/jpg')
gfreight.save

dieta = Project.find_or_create_by!(name: "Tu Dieta en Piloto Automático",
                                   description: "Armamos una dieta a tu medida y te ayudamos a prepararla",
                                   link_1: "https://www.dietascormillot.com",
                                   link_2: "https://bitbucket.org/nikhilm/rust-diet",
                                   user_id: juan.id)
dieta.photo.attach(io:URI.open("https://recognizeyourworld.com/wp-content/uploads/2016/01/Healthy-Food-Logo.jpg"),
                     filename: "#{dieta.name}.png",
                     content_type: 'image/png')
dieta.save

dreschrr = Project.find_or_create_by!(name: "Dreschrr",
                                     description: "Tu solución a todos tus problemas hogareños con garantía de confianza, seguridad y responsabilidad social",
                                     link_1: "https://www.linkedin.com/company/nanny-network",
                                     link_2: "https://www.instagram.com/officialfrandrescher", sponsored: true,
                                     user_id: pablo.id)
dreschrr.photo.attach(io:URI.open("https://www.concordmonitor.com/getattachment/5b3199a8-fb92-481e-b95a-d2f0e0e228d2/WORSTMOMENTDRESCHER-cm-04xx20-ph33"),
                     filename: "#{dreschrr.name}.png",
                     content_type: 'image/png')
dreschrr.save

airtool = Project.find_or_create_by!(name: "AirTool",
                                     description: "Alquila herramientas para todas tus necesidades hogareñas",
                                     link_1: "https://www.facebook.com/visiontools",
                                     link_2: "https://www.linkedin.com/company/rental-tool-company/about", sponsored: true,
                                     user_id: mauricio.id)
airtool.photo.attach(io:URI.open("https://thumbs.dreamstime.com/b/design-can-be-used-as-logo-icon-as-complement-to-design-tool-repair-logo-icon-design-127356170.jpg"),
                     filename: "#{airtool.name}.png",
                     content_type: 'image/png')
airtool.save

aquarental = Project.find_or_create_by!(name: "AquaRental",
                                       description: "Alquila equipamiento acuático para pasar un fin de semana de lujo",
                                       link_1: "https://www.sportdiver.com",
                                       user_id: armando.id)
aquarental.photo.attach(io:URI.open("https://pngimage.net/wp-content/uploads/2018/06/sail-logo-png-1.png"),
                     filename: "#{aquarental.name}.jpg",
                     content_type: 'image/png')
aquarental.save

adventuremap = Project.find_or_create_by!(name: "Adventure Map",
                                         description: "Conecta con otros usuarios en nuestro mapa interactivo para realizarte recomendaciones y vivir una aventura!",
                                         link_1: "https://www.adventuremaps.net",
                                         user_id: juanpablo.id)
adventuremap.photo.attach(io:URI.open("https://cdn.dribbble.com/users/175784/screenshots/1304076/adventure-map-illustration_1x.png"),
                     filename: "#{adventuremap.name}.png",
                     content_type: 'image/png')
adventuremap.save

uma = Project.find_or_create_by!(name: "Medic!",
                                 description: "Accede a servicios de salud online para responder todas tus consultas con seguridad, evitando riesgos y con IA",
                                 link_1: "https://www.linkedin.com/company/umahealth",
                                 link_2: "https://twitter.com/uma_health",
                                 sponsored: true,
                                 user_id: ernesto.id)
uma.photo.attach(io:URI.open("https://cdn.logojoy.com/wp-content/uploads/2018/05/30162438/361.png"),
                filename: "#{uma.name}.png",
                content_type: 'image/png')
uma.save



puts "Done creating Projects"
puts ""

puts "Creating Roles..."
first_role = Role.find_or_create_by!(name: "Back-End Dev",
                        description: "Mantener el Back-End de la plataforma utilizando Rails, JS, Ruby y más",
                        project_id: lcet.id)
second_role = Role.find_or_create_by!(name: "Front-End Dev",
                        description: "Diseñador Front-End con conocimientos intermedios de HTML/CSS y básicos de ROR",
                        project_id: lcet.id)
fourth_role = Role.find_or_create_by!(name: "Project Manager",
                        description: "Experiencia en Agile, Scrum y conocimientos básicos de Python",
                        project_id: lcet.id)
twentyfirst_role = Role.find_or_create_by!(name: "Investment Management",
                        description: "Manejar las relaciones con nuestros potenciales inversores a futuro",
                        project_id: lcet.id)
thirtyfourth_role = Role.find_or_create_by!(name: "Fullstack Developer",
                        description: "Buscamos un Dev Jr con ganas de aprender y desarrollarse en el mundo de la programación web",
                        project_id: lcet.id)


third_role = Role.find_or_create_by!(name: "Front-End Dev",
                        description: "Diseñador Front-End con conocimientos intermedios de HTML/CSS y básicos de ROR",
                        project_id: atm.id)
fifth_role = Role.find_or_create_by!(name: "Project Manager",
                        description: "Experiencia en Agile, Scrum y conocimientos básicos de Python",
                        project_id: atm.id)
eighteenth_role = Role.find_or_create_by!(name: "Data Scientist",
                        description: "Data scraping global para generar insights dentro de la plataforma",
                        project_id: atm.id)


sixth_role = Role.find_or_create_by!(name: "Seguridad",
                        description: "Necesaria presencia física para negociaciones difíciles",
                        project_id: laliga.id)
seventh_role = Role.find_or_create_by!(name: "Cobranzas",
                        description: "Colaborador paciente, creativo y con iniciativa para recuperar capitales difíciles",
                        project_id: laliga.id)
nineteenth_role = Role.find_or_create_by!(name: "Project Manager",
                        description: "Experiencia trabajando y coordinando con clientes difíciles",
                        project_id: laliga.id)
twentieth_role = Role.find_or_create_by!(name: "Back and Front-End Dev",
                        description: "Mantener el Back-End de la plataforma y conocimientos básicos de diseño",
                        project_id: laliga.id)


eighth_role = Role.find_or_create_by!(name: "Back-End Dev",
                        description: "Mantener el Back-End de la plataforma utilizando Rails, JS, Ruby y más",
                        project_id: gfreight.id)
ninth_role = Role.find_or_create_by!(name: "Front-End Dev Master",
                        description: "Diseñador Front-End con mucha experiencia en React",
                        project_id: gfreight.id)
tenth_role = Role.find_or_create_by!(name: "Project Manager",
                        description: "Experiencia en Agile, Scrum y conocimientos básicos de Java",
                        project_id: gfreight.id)
sixteenth_role = Role.find_or_create_by!(name: "AI Specialist",
                        description: "Experiencia en modelos predictivos, inteligencia artificial y logística para ayudar con las rutas de freight",
                        project_id: gfreight.id)


eleventh_role = Role.find_or_create_by!(name: "Back and Front-End Dev",
                        description: "Mantener el Back-End de la plataforma y conocimientos básicos de diseño",
                        project_id: dieta.id)
twelfth_role = Role.find_or_create_by!(name: "Nutricionista",
                        description: "Conocimiento académico para darnos insight acerca de cómo combinar alimentos y comidas",
                        project_id: dieta.id)
fifteenth_role = Role.find_or_create_by!(name: "AI Specialist",
                        description: "Experiencia en modelos predictivos, inteligencia artificial y redes neuronales para contribuir con la construcción de las dietas",
                        project_id: dieta.id)


thirteenth_role = Role.find_or_create_by!(name: "Back and Front-End Dev",
                        description: "Mantener el Back-End de la plataforma y conocimientos básicos de diseño",
                        project_id: dreschrr.id)
fourteenth_role = Role.find_or_create_by!(name: "Acompañante Terapéutico",
                        description: "Insight acerca del cuidado de niños, personas mayores y discapacitados",
                        project_id: dreschrr.id)
seventeenth_role = Role.find_or_create_by!(name: "HR Coordinator",
                        description: "Ayuda entre la coordinación del personal de la plataforma y nuestros clientes",
                        project_id: dreschrr.id)



twentysecond_role = Role.find_or_create_by!(name: "Project Manager",
                    description: "Experiencia trabajando y coordinando con clientes difíciles",
                    project_id: airtool.id)
twentythird_role = Role.find_or_create_by!(name: "Back-End Dev",
                    description: "Mantener el Back-End de la plataforma utilizando Rails, JS, Ruby y más",
                    project_id: airtool.id)
twentyfourth_role = Role.find_or_create_by!(name: "Logistics Manager",
                    description: "Ayuda entre la coordinación del personal de la plataforma y nuestros clientes",
                    project_id: airtool.id)


twentyfifth_role = Role.find_or_create_by!(name: "Logistics Manager",
                    description: "Ayuda entre la coordinación del personal de la plataforma y nuestros clientes",
                    project_id: aquarental.id)
twentysixth_role = Role.find_or_create_by!(name: "Project Manager",
                    description: "Experiencia trabajando y coordinando con clientes difíciles",
                    project_id: aquarental.id)
twentyseventh_role = Role.find_or_create_by!(name: "Back and Front-End Dev",
                    description: "Mantener el Back-End de la plataforma y conocimientos básicos de diseño",
                    project_id: aquarental.id)


twentyeighth_role = Role.find_or_create_by!(name: "AI Specialist",
                    description: "Experiencia en modelos predictivos, inteligencia artificial y redes neuronales para contribuir con el mapeo",
                    project_id: adventuremap.id)
twentyninth_role = Role.find_or_create_by!(name: "Data Scientist",
                    description: "Data scraping global para generar insights dentro de la plataforma",
                    project_id: adventuremap.id)
thirtieth_role = Role.find_or_create_by!(name: "Back-End Dev",
                        description: "Mantener el Back-End de la plataforma utilizando Rails, JS, Ruby y más",
                    project_id: adventuremap.id)


thirtyfirst_role = Role.find_or_create_by!(name: "HR Coordinator",
                    description: "Ayuda entre la coordinación del personal de la plataforma y nuestros clientes",
                    project_id: uma.id)
thirtysecond_role = Role.find_or_create_by!(name: "Health Specialist",
                    description: "Médico certificado para colaborar con conocimientos de medicina certeros a incorporar en modelos predictivos",
                    project_id: uma.id)
thirtythird_role = Role.find_or_create_by!(name: "AI Specialist",
                        description: "Experiencia en modelos predictivos e inteligencia artificial para aportar a los diagnósticos",
                    project_id: uma.id)


puts "Done creating Roles"
puts ""

puts "Assigning project owners to roles..."
Collaborator.find_or_create_by!(role_id: lcet.roles.first.id,
                                user_id: lcet.user.id,
                                status: "active")
Collaborator.find_or_create_by!(role_id: atm.roles.first.id,
                                user_id: atm.user.id,
                                status: "active")
Collaborator.find_or_create_by!(role_id: laliga.roles.first.id,
                                user_id: laliga.user.id,
                                status: "active")
Collaborator.find_or_create_by!(role_id: gfreight.roles.first.id,
                                user_id: gfreight.user.id,
                                status: "active")
Collaborator.find_or_create_by!(role_id: dieta.roles.first.id,
                                user_id: dieta.user.id,
                                status: "active")
Collaborator.find_or_create_by!(role_id: dreschrr.roles.first.id,
                                user_id: dreschrr.user.id,
                                status: "active")
Collaborator.find_or_create_by!(role_id: airtool.roles.first.id,
                                user_id: airtool.user.id,
                                status: "active")
Collaborator.find_or_create_by!(role_id: aquarental.roles.first.id,
                                user_id: aquarental.user.id,
                                status: "active")
Collaborator.find_or_create_by!(role_id: adventuremap.roles.first.id,
                                user_id: adventuremap.user.id,
                                status: "active")
Collaborator.find_or_create_by!(role_id: uma.roles.first.id,
                                user_id: uma.user.id,
                                status: "active")
puts "Done assigning"
puts ""

puts "Creating applications..."
ApplicationRequest.find_or_create_by!(status: "accepted", user_id: tomas.id,
                                      role_id: fourth_role.id,
                                      about_me: "Trabajé mucho en management de proyectos en Somalia")
ApplicationRequest.find_or_create_by!(status: "accepted", user_id: juanpablo.id,
                                      role_id: fifth_role.id,
                                      about_me: "Certificado como PMI-ACP")
ApplicationRequest.find_or_create_by!(status: "pending response from applicant", user_id: juanpablo.id,
                                      role_id: seventh_role.id,
                                      about_me: "Trabajé para Coppel yendo a cobrar a Jose C Paz y Paso del Rey")
ApplicationRequest.find_or_create_by!(status: "accepted", user_id: mauricio.id,
                                      role_id: ninth_role.id,
                                      about_me: "Demasiado prendido para este mundo")
ApplicationRequest.find_or_create_by!(user_id: juanpablo.id,
                                      role_id: ninth_role.id,
                                      about_me: "Soy un genio de Javascript. Flatpicker? Lo inventé yo. Las facturas con pastelera? Obvio que yo también.")
ApplicationRequest.find_or_create_by!(user_id: armando.id,
                                      role_id: tenth_role.id,
                                      about_me: "Ex Scrum Master en Globant por varios años")
ApplicationRequest.find_or_create_by!(status: "accepted", user_id: juanpablo.id,
                                      role_id: twelfth_role.id,
                                      about_me: "Ex alumno de Cormillot")
ApplicationRequest.find_or_create_by!(status: "pending response from applicant", user_id: ernesto.id,
                                      role_id: fourteenth_role.id,
                                      about_me: "Me encantan los niños y soy el fan número 1 de Fran Drescher!")
ApplicationRequest.find_or_create_by!(status: "accepted", user_id: armando.id,
                                      role_id: fifteenth_role.id,
                                      about_me: "Co-fundador de Skynet. Beep boop.")
ApplicationRequest.find_or_create_by!(status: "accepted", user_id: ernesto.id,
                                      role_id: sixteenth_role.id,
                                      about_me: "Científico de datos de renombre")
ApplicationRequest.find_or_create_by!(status: "declined by owner", user_id: ernesto.id,
                                      role_id: seventeenth_role.id,
                                      about_me: "Futuro licenciado de HR con pasión por los datos y la programación")
ApplicationRequest.find_or_create_by!(user_id: pablo.id,
                                      role_id: eighteenth_role.id,
                                      about_me: "Científico de datos de renombre")
ApplicationRequest.find_or_create_by!(status: "accepted", user_id: mauricio.id,
                                      role_id: nineteenth_role.id,
                                      about_me: "Ex Scrum Master en Globant por varios años")
ApplicationRequest.find_or_create_by!(user_id: ernesto.id,
                                      role_id: twentieth_role.id,
                                      about_me: "El fullstack dev más balanceado del mercado")
ApplicationRequest.find_or_create_by!(status: "accepted", user_id: amy.id,
                                      role_id: twentyfirst_role.id,
                                      about_me: "Ex associate de Y Combinator")
ApplicationRequest.find_or_create_by!(user_id: juanpablo.id,
                                      role_id: thirtyfourth_role.id,
                                      about_me: "Soy recién egresado de LeWagon Batch #384!")

puts "Done creating Applications"
puts ""

# 1 2 3 5 6 8 10 11 13 16 18 19

puts "Creating Levels..."
Level.find_or_create_by!(name: "Junior")
Level.find_or_create_by!(name: "Semisenior")
Level.find_or_create_by!(name: "Senior")
Level.find_or_create_by!(name: "Master")
puts "Done creating Levels"
puts ""

puts "Creating Technologies..."
ruby = Technology.find_or_create_by!(name: "Ruby")
js = Technology.find_or_create_by!(name: "Javascript")
css = Technology.find_or_create_by!(name: "CSS")
java = Technology.find_or_create_by!(name: "Java")
python = Technology.find_or_create_by!(name: "Python")
react = Technology.find_or_create_by!(name: "React")
html = Technology.find_or_create_by!(name: "HTML")
rails = Technology.find_or_create_by!(name: "Rails")
violence = Technology.find_or_create_by!(name: "Negotiation")
intimidation = Technology.find_or_create_by!(name: "Physique")
agile = Technology.find_or_create_by!(name: "Agile")
scrum = Technology.find_or_create_by!(name: "Scrum")
people = Technology.find_or_create_by!(name: "People skills")
accounting = Technology.find_or_create_by!(name: "Accounting")
nutrition = Technology.find_or_create_by!(name: "Nutrition")
health = Technology.find_or_create_by!(name: "Health")
brain = Technology.find_or_create_by!(name: "AI")
logistics = Technology.find_or_create_by!(name: "Logistics")
human = Technology.find_or_create_by!(name: "HR")
data = Technology.find_or_create_by!(name: "Data Science")

puts "Done creating technologies"
puts ""

puts "Creating Requirements..."
Requirement.find_or_create_by!(role_id: first_role.id,
                               technology_id: ruby.id,
                               level_id: Level.second.id)
Requirement.find_or_create_by!(role_id: first_role.id,
                               technology_id: rails.id,
                               level_id: Level.second.id)
Requirement.find_or_create_by!(role_id: first_role.id,
                               technology_id: html.id,
                               level_id: Level.second.id)

Requirement.find_or_create_by!(role_id: second_role.id,
                               technology_id: js.id,
                               level_id: Level.second.id)
Requirement.find_or_create_by!(role_id: second_role.id,
                               technology_id: css.id,
                               level_id: Level.third.id)
Requirement.find_or_create_by!(role_id: second_role.id,
                               technology_id: html.id,
                               level_id: Level.third.id)
Requirement.find_or_create_by!(role_id: second_role.id,
                               technology_id: ruby.id,
                               level_id: Level.first.id)
Requirement.find_or_create_by!(role_id: second_role.id,
                               technology_id: rails.id,
                               level_id: Level.first.id)

Requirement.find_or_create_by!(role_id: third_role.id,
                               technology_id: js.id,
                               level_id: Level.second.id)
Requirement.find_or_create_by!(role_id: third_role.id,
                               technology_id: css.id,
                               level_id: Level.third.id)
Requirement.find_or_create_by!(role_id: third_role.id,
                               technology_id: html.id,
                               level_id: Level.third.id)
Requirement.find_or_create_by!(role_id: third_role.id,
                               technology_id: ruby.id,
                               level_id: Level.first.id)
Requirement.find_or_create_by!(role_id: third_role.id,
                               technology_id: rails.id,
                               level_id: Level.first.id)

Requirement.find_or_create_by!(role_id: fourth_role.id,
                               technology_id: agile.id,
                               level_id: Level.fourth.id)
Requirement.find_or_create_by!(role_id: fourth_role.id,
                               technology_id: scrum.id,
                               level_id: Level.fourth.id)
Requirement.find_or_create_by!(role_id: fourth_role.id,
                               technology_id: python.id,
                               level_id: Level.first.id)

Requirement.find_or_create_by!(role_id: fifth_role.id,
                               technology_id: agile.id,
                               level_id: Level.fourth.id)
Requirement.find_or_create_by!(role_id: fifth_role.id,
                               technology_id: scrum.id,
                               level_id: Level.fourth.id)
Requirement.find_or_create_by!(role_id: fifth_role.id,
                               technology_id: python.id,
                               level_id: Level.first.id)

Requirement.find_or_create_by!(role_id: sixth_role.id,
                               technology_id: violence.id,
                               level_id: Level.third.id)
Requirement.find_or_create_by!(role_id: sixth_role.id,
                               technology_id: intimidation.id,
                               level_id: Level.second.id)
Requirement.find_or_create_by!(role_id: sixth_role.id,
                               technology_id: human.id,
                               level_id: Level.first.id)

Requirement.find_or_create_by!(role_id: seventh_role.id,
                               technology_id: intimidation.id,
                               level_id: Level.second.id)
Requirement.find_or_create_by!(role_id: seventh_role.id,
                               technology_id: people.id,
                               level_id: Level.third.id)
Requirement.find_or_create_by!(role_id: seventh_role.id,
                               technology_id: accounting.id,
                               level_id: Level.third.id)

Requirement.find_or_create_by!(role_id: eighth_role.id,
                               technology_id: ruby.id,
                               level_id: Level.second.id)
Requirement.find_or_create_by!(role_id: eighth_role.id,
                               technology_id: rails.id,
                               level_id: Level.second.id)
Requirement.find_or_create_by!(role_id: eighth_role.id,
                               technology_id: html.id,
                               level_id: Level.second.id)

Requirement.find_or_create_by!(role_id: ninth_role.id,
                               technology_id: js.id,
                               level_id: Level.fourth.id)
Requirement.find_or_create_by!(role_id: ninth_role.id,
                               technology_id: css.id,
                               level_id: Level.fourth.id)
Requirement.find_or_create_by!(role_id: ninth_role.id,
                               technology_id: html.id,
                               level_id: Level.fourth.id)
Requirement.find_or_create_by!(role_id: ninth_role.id,
                               technology_id: ruby.id,
                               level_id: Level.second.id)
Requirement.find_or_create_by!(role_id: ninth_role.id,
                               technology_id: rails.id,
                               level_id: Level.second.id)
Requirement.find_or_create_by!(role_id: ninth_role.id,
                               technology_id: react.id,
                               level_id: Level.second.id)

Requirement.find_or_create_by!(role_id: tenth_role.id,
                               technology_id: agile.id,
                               level_id: Level.fourth.id)
Requirement.find_or_create_by!(role_id: tenth_role.id,
                               technology_id: scrum.id,
                               level_id: Level.fourth.id)
Requirement.find_or_create_by!(role_id: tenth_role.id,
                               technology_id: java.id,
                               level_id: Level.first.id)

Requirement.find_or_create_by!(role_id: eleventh_role.id,
                               technology_id: ruby.id,
                               level_id: Level.first.id)
Requirement.find_or_create_by!(role_id: eleventh_role.id,
                               technology_id: rails.id,
                               level_id: Level.first.id)
Requirement.find_or_create_by!(role_id: eleventh_role.id,
                               technology_id: css.id,
                               level_id: Level.second.id)
Requirement.find_or_create_by!(role_id: eleventh_role.id,
                               technology_id: html.id,
                               level_id: Level.second.id)

Requirement.find_or_create_by!(role_id: twelfth_role.id,
                               technology_id: nutrition.id,
                               level_id: Level.third.id)
Requirement.find_or_create_by!(role_id: twelfth_role.id,
                               technology_id: health.id,
                               level_id: Level.second.id)

Requirement.find_or_create_by!(role_id: thirteenth_role.id,
                               technology_id: ruby.id,
                               level_id: Level.first.id)
Requirement.find_or_create_by!(role_id: thirteenth_role.id,
                               technology_id: rails.id,
                               level_id: Level.first.id)
Requirement.find_or_create_by!(role_id: thirteenth_role.id,
                               technology_id: css.id,
                               level_id: Level.second.id)
Requirement.find_or_create_by!(role_id: thirteenth_role.id,
                               technology_id: html.id,
                               level_id: Level.second.id)

Requirement.find_or_create_by!(role_id: fourteenth_role.id,
                               technology_id: health.id,
                               level_id: Level.second.id)
Requirement.find_or_create_by!(role_id: fourteenth_role.id,
                               technology_id: people.id,
                               level_id: Level.third.id)

Requirement.find_or_create_by!(role_id: fifteenth_role.id,
                               technology_id: brain.id,
                               level_id: Level.fourth.id)

Requirement.find_or_create_by!(role_id: sixteenth_role.id,
                               technology_id: brain.id,
                               level_id: Level.fourth.id)
Requirement.find_or_create_by!(role_id: sixteenth_role.id,
                               technology_id: logistics.id,
                               level_id: Level.second.id)

Requirement.find_or_create_by!(role_id: seventeenth_role.id,
                               technology_id: human.id,
                               level_id: Level.third.id)
Requirement.find_or_create_by!(role_id: seventeenth_role.id,
                               technology_id: people.id,
                               level_id: Level.second.id)

Requirement.find_or_create_by!(role_id: eighteenth_role.id,
                               technology_id: data.id,
                               level_id: Level.third.id)
Requirement.find_or_create_by!(role_id: eighteenth_role.id,
                               technology_id: ruby.id,
                               level_id: Level.second.id)

Requirement.find_or_create_by!(role_id: nineteenth_role.id,
                               technology_id: people.id,
                               level_id: Level.third.id)
Requirement.find_or_create_by!(role_id: nineteenth_role.id,
                               technology_id: scrum.id,
                               level_id: Level.third.id)
Requirement.find_or_create_by!(role_id: nineteenth_role.id,
                               technology_id: ruby.id,
                               level_id: Level.second.id)

Requirement.find_or_create_by!(role_id: twentieth_role.id,
                               technology_id: ruby.id,
                               level_id: Level.first.id)
Requirement.find_or_create_by!(role_id: twentieth_role.id,
                               technology_id: css.id,
                               level_id: Level.second.id)
Requirement.find_or_create_by!(role_id: twentieth_role.id,
                               technology_id: html.id,
                               level_id: Level.second.id)

Requirement.find_or_create_by!(role_id: twentyfirst_role.id,
                               technology_id: people.id,
                               level_id: Level.third.id)
Requirement.find_or_create_by!(role_id: twentyfirst_role.id,
                               technology_id: accounting.id,
                               level_id: Level.third.id)
Requirement.find_or_create_by!(role_id: twentyfirst_role.id,
                               technology_id: data.id,
                               level_id: Level.third.id)

Requirement.find_or_create_by!(role_id: twentysecond_role.id,
                               technology_id: agile.id,
                               level_id: Level.fourth.id)
Requirement.find_or_create_by!(role_id: twentysecond_role.id,
                               technology_id: scrum.id,
                               level_id: Level.fourth.id)
Requirement.find_or_create_by!(role_id: twentysecond_role.id,
                               technology_id: java.id,
                               level_id: Level.first.id)

Requirement.find_or_create_by!(role_id: twentythird_role.id,
                               technology_id: ruby.id,
                               level_id: Level.second.id)
Requirement.find_or_create_by!(role_id: twentythird_role.id,
                               technology_id: rails.id,
                               level_id: Level.second.id)
Requirement.find_or_create_by!(role_id: twentythird_role.id,
                               technology_id: html.id,
                               level_id: Level.second.id)

Requirement.find_or_create_by!(role_id: twentyfourth_role.id,
                               technology_id: people.id,
                               level_id: Level.third.id)
Requirement.find_or_create_by!(role_id: twentyfourth_role.id,
                               technology_id: accounting.id,
                               level_id: Level.second.id)
Requirement.find_or_create_by!(role_id: twentyfourth_role.id,
                               technology_id: logistics.id,
                               level_id: Level.second.id)

Requirement.find_or_create_by!(role_id: twentyfifth_role.id,
                               technology_id: people.id,
                               level_id: Level.third.id)
Requirement.find_or_create_by!(role_id: twentyfifth_role.id,
                               technology_id: accounting.id,
                               level_id: Level.second.id)
Requirement.find_or_create_by!(role_id: twentyfifth_role.id,
                               technology_id: logistics.id,
                               level_id: Level.second.id)

Requirement.find_or_create_by!(role_id: twentysixth_role.id,
                               technology_id: agile.id,
                               level_id: Level.fourth.id)
Requirement.find_or_create_by!(role_id: twentysixth_role.id,
                               technology_id: scrum.id,
                               level_id: Level.fourth.id)
Requirement.find_or_create_by!(role_id: twentysixth_role.id,
                               technology_id: java.id,
                               level_id: Level.first.id)

Requirement.find_or_create_by!(role_id: twentyseventh_role.id,
                               technology_id: ruby.id,
                               level_id: Level.first.id)
Requirement.find_or_create_by!(role_id: twentyseventh_role.id,
                               technology_id: rails.id,
                               level_id: Level.first.id)
Requirement.find_or_create_by!(role_id: twentyseventh_role.id,
                               technology_id: css.id,
                               level_id: Level.second.id)
Requirement.find_or_create_by!(role_id: twentyseventh_role.id,
                               technology_id: html.id,
                               level_id: Level.second.id)

Requirement.find_or_create_by!(role_id: twentyeighth_role.id,
                               technology_id: brain.id,
                               level_id: Level.fourth.id)

Requirement.find_or_create_by!(role_id: twentyninth_role.id,
                               technology_id: data.id,
                               level_id: Level.third.id)
Requirement.find_or_create_by!(role_id: twentyninth_role.id,
                               technology_id: ruby.id,
                               level_id: Level.second.id)

Requirement.find_or_create_by!(role_id: thirtieth_role.id,
                               technology_id: ruby.id,
                               level_id: Level.second.id)
Requirement.find_or_create_by!(role_id: thirtieth_role.id,
                               technology_id: rails.id,
                               level_id: Level.second.id)
Requirement.find_or_create_by!(role_id: thirtieth_role.id,
                               technology_id: html.id,
                               level_id: Level.second.id)

Requirement.find_or_create_by!(role_id: thirtyfirst_role.id,
                               technology_id: human.id,
                               level_id: Level.third.id)
Requirement.find_or_create_by!(role_id: thirtyfirst_role.id,
                               technology_id: people.id,
                               level_id: Level.second.id)

Requirement.find_or_create_by!(role_id: thirtythird_role.id,
                               technology_id: health.id,
                               level_id: Level.fourth.id)

Requirement.find_or_create_by!(role_id: thirtythird_role.id,
                               technology_id: brain.id,
                               level_id: Level.fourth.id)
Requirement.find_or_create_by!(role_id: thirtythird_role.id,
                               technology_id: health.id,
                               level_id: Level.first.id)
Requirement.find_or_create_by!(role_id: thirtythird_role.id,
                               technology_id: python.id,
                               level_id: Level.third.id)

Requirement.find_or_create_by!(role_id: thirtythird_role.id,
                               technology_id: brain.id,
                               level_id: Level.fourth.id)
Requirement.find_or_create_by!(role_id: thirtythird_role.id,
                               technology_id: health.id,
                               level_id: Level.first.id)
Requirement.find_or_create_by!(role_id: thirtythird_role.id,
                               technology_id: python.id,
                               level_id: Level.third.id)

Requirement.find_or_create_by!(role_id: thirtyfourth_role.id,
                               technology_id: ruby.id,
                               level_id: Level.second.id)
Requirement.find_or_create_by!(role_id: thirtyfourth_role.id,
                               technology_id: rails.id,
                               level_id: Level.second.id)
Requirement.find_or_create_by!(role_id: thirtyfourth_role.id,
                               technology_id: js.id,
                               level_id: Level.first.id)
Requirement.find_or_create_by!(role_id: thirtyfourth_role.id,
                               technology_id: css.id,
                               level_id: Level.second.id)

puts "Done creating requirements"
puts ""

puts "Creating Skills..."
Skill.find_or_create_by!(user: pablo,
                         technology: ruby,
                         level: Level.third)
Skill.find_or_create_by!(user: pablo,
                         technology: js,
                         level: Level.second)
Skill.find_or_create_by!(user: pablo,
                         technology: agile,
                         level: Level.second)
Skill.find_or_create_by!(user: pablo,
                         technology: scrum,
                         level: Level.second)
Skill.find_or_create_by!(user: pablo,
                         technology: people,
                         level: Level.third)

Skill.find_or_create_by!(user: amy,
                         technology: ruby,
                         level: Level.third)
Skill.find_or_create_by!(user: amy,
                         technology: health,
                         level: Level.third)
Skill.find_or_create_by!(user: amy,
                         technology: human,
                         level: Level.second)
Skill.find_or_create_by!(user: amy,
                         technology: intimidation,
                         level: Level.second)
Skill.find_or_create_by!(user: amy,
                         technology: people,
                         level: Level.second)

Skill.find_or_create_by!(user: elian,
                         technology: rails,
                         level: Level.third)
Skill.find_or_create_by!(user: elian,
                         technology: ruby,
                         level: Level.second)
Skill.find_or_create_by!(user: elian,
                         technology: html,
                         level: Level.third)
Skill.find_or_create_by!(user: elian,
                         technology: data,
                         level: Level.third)

Skill.find_or_create_by!(user: tomas,
                         technology: logistics,
                         level: Level.first)
Skill.find_or_create_by!(user: tomas,
                         technology: brain,
                         level: Level.fourth)
Skill.find_or_create_by!(user: tomas,
                         technology: react,
                         level: Level.third)
Skill.find_or_create_by!(user: tomas,
                         technology: python,
                         level: Level.third)

Skill.find_or_create_by!(user: nadia,
                         technology: logistics,
                         level: Level.third)
Skill.find_or_create_by!(user: nadia,
                         technology: agile,
                         level: Level.third)
Skill.find_or_create_by!(user: nadia,
                         technology: scrum,
                         level: Level.first)
Skill.find_or_create_by!(user: nadia,
                         technology: logistics,
                         level: Level.third)
Skill.find_or_create_by!(user: nadia,
                         technology: java,
                         level: Level.second)

Skill.find_or_create_by!(user: juan,
                         technology: accounting,
                         level: Level.second)
Skill.find_or_create_by!(user: juan,
                         technology: java,
                         level: Level.third)
Skill.find_or_create_by!(user: juan,
                         technology: nutrition,
                         level: Level.second)
Skill.find_or_create_by!(user: juan,
                         technology: data,
                         level: Level.second)

Skill.find_or_create_by!(user: armando,
                         technology: ruby,
                         level: Level.first)
Skill.find_or_create_by!(user: armando,
                         technology: react,
                         level: Level.third)
Skill.find_or_create_by!(user: armando,
                         technology: violence,
                         level: Level.second)
Skill.find_or_create_by!(user: armando,
                         technology: human,
                         level: Level.second)

Skill.find_or_create_by!(user: ernesto,
                         technology: people,
                         level: Level.second)
Skill.find_or_create_by!(user: ernesto,
                         technology: health,
                         level: Level.third)
Skill.find_or_create_by!(user: ernesto,
                         technology: logistics,
                         level: Level.second)
Skill.find_or_create_by!(user: ernesto,
                         technology: brain,
                         level: Level.second)

Skill.find_or_create_by!(user: mauricio,
                         technology: java,
                         level: Level.fourth)
Skill.find_or_create_by!(user: mauricio,
                         technology: python,
                         level: Level.third)
Skill.find_or_create_by!(user: mauricio,
                         technology: rails,
                         level: Level.second)
Skill.find_or_create_by!(user: mauricio,
                         technology: ruby,
                         level: Level.second)

Skill.find_or_create_by!(user: juanpablo,
                         technology: java,
                         level: Level.fourth)
Skill.find_or_create_by!(user: juanpablo,
                         technology: accounting,
                         level: Level.third)
Skill.find_or_create_by!(user: juanpablo,
                         technology: data,
                         level: Level.second)
Skill.find_or_create_by!(user: juanpablo,
                         technology: scrum,
                         level: Level.second)

puts "Done creating skills"
puts "..."


puts "Creating Suggestions..."

oauth = Suggestion.find_or_create_by!(project: lcet,
                              collaborator: lcet.collaborators.second,
                              description: "Implementar OAuth para que se pueda iniciar sesión con GitHub")
chatroom = Suggestion.find_or_create_by!(project: lcet,
                              collaborator: lcet.collaborators.first,
                              description: "Hacemos un Chatroom para comunicar aplicantes y project owners?")
hiddenmeme = Suggestion.find_or_create_by!(project: lcet,
                              collaborator: lcet.collaborators.third,
                              description: "Escondamos un meme en el header total nadie lo va a ver :)")

SuggestionVote.find_or_create_by!(suggestion: oauth,
                                  collaborator: lcet.collaborators.find_by(user: amy),
                                  rating: 4)
SuggestionVote.find_or_create_by!(suggestion: chatroom,
                                  collaborator: lcet.collaborators.find_by(user: amy),
                                  rating: 3)
SuggestionVote.find_or_create_by!(suggestion: hiddenmeme,
                                  collaborator: lcet.collaborators.find_by(user: amy),
                                  rating: 5)

SuggestionVote.find_or_create_by!(suggestion: oauth,
                                  collaborator: lcet.collaborators.find_by(user: tomas),
                                  rating: 5)
SuggestionVote.find_or_create_by!(suggestion: chatroom,
                                  collaborator: lcet.collaborators.find_by(user: tomas),
                                  rating: 5)
SuggestionVote.find_or_create_by!(suggestion: hiddenmeme,
                                  collaborator: lcet.collaborators.find_by(user: tomas),
                                  rating: 5)

fotos = Suggestion.find_or_create_by!(project: gfreight,
                              collaborator: gfreight.collaborators.second,
                              description: "Pongamos fotos de los camiones para que los users vean que son nuevos!")
cargas = Suggestion.find_or_create_by!(project: gfreight,
                              collaborator: gfreight.collaborators.first,
                              description: "Podríamos especificar el tipo de carga para evitar sorpresas.")

SuggestionVote.find_or_create_by!(suggestion: fotos,
                                  collaborator: gfreight.collaborators.find_by(user: nadia),
                                  rating: 4)
SuggestionVote.find_or_create_by!(suggestion: cargas,
                                  collaborator: gfreight.collaborators.find_by(user: nadia),
                                  rating: 4)

SuggestionVote.find_or_create_by!(suggestion: fotos,
                                  collaborator: gfreight.collaborators.find_by(user: ernesto),
                                  rating: 1)
SuggestionVote.find_or_create_by!(suggestion: cargas,
                                  collaborator: gfreight.collaborators.find_by(user: ernesto),
                                  rating: 1)

SuggestionVote.find_or_create_by!(suggestion: fotos,
                                  collaborator: gfreight.collaborators.find_by(user: mauricio),
                                  rating: 2)
SuggestionVote.find_or_create_by!(suggestion: cargas,
                                  collaborator: gfreight.collaborators.find_by(user: mauricio),
                                  rating: 5)

puts "Done!"
