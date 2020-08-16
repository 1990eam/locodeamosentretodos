puts "Cleaning DB"
User.destroy_all
puts "Done cleaning"
puts ""

puts "Creating Users..."

pablo = User.create!(first_name: "Pablo",
                    last_name: "Andrizzi",
                    email: "test@test.com",
                    password:"test1234", admin: true)
pablo.photo.attach(io:URI.open("https://avatars1.githubusercontent.com/u/61561129?s=460&u=6e2ed6bcc6469699e7f7952b0c38cdd5a9373699&v=4"),
                  filename: "#{pablo.first_name}.png",
                  content_type: 'image/png')

amy = User.create!(first_name: "Amy",
                    last_name: "Camacho",
                    email: "test2@test.com",
                    password:"test1234")
amy.photo.attach(io:URI.open("https://avatars1.githubusercontent.com/u/61168741?s=460&u=ed128ee2185429d93df7b91cbd30b2aea0c61947&v=4"),
                  filename: "#{amy.first_name}.png",
                  content_type: 'image/png')

tomas = User.create!(first_name: "Tomas",
                    last_name: "Hergott",
                    email: "test3@test.com",
                    password:"test1234")
tomas.photo.attach(io: File.open("app/assets/images/foto-tomy.jpg"),
                  filename: "#{tomas.first_name}.jpeg",
                  content_type: 'image/jpg')

elian = User.create!(first_name: "Elián",
                    last_name: "Magni",
                    email: "test4@test.com",
                    password:"test1234")
elian.photo.attach(io:URI.open("https://avatars2.githubusercontent.com/u/46629749?s=460&u=23951b92127ebdc8cdac564a824ca0f262a85645&v=4"),
                  filename: "#{elian.first_name}.png",
                  content_type: 'image/png')

nadia = User.create!(first_name: "Nadia",
                    last_name: "Salmen",
                    email: "test5@test.com",
                    password:"test1234")
nadia.photo.attach(io:URI.open("https://avatars1.githubusercontent.com/u/60677572?s=400&u=340d262a796f1ebb274beedb339b3d1e05bd28ee&v=4"),
                  filename: "#{nadia.first_name}.png",
                  content_type: 'image/png')

armando = User.create!(first_name: "Armando",
                    last_name: "Terán",
                    email: "test6@test.com",
                    password:"test1234")
armando.photo.attach(io:URI.open("https://avatars2.githubusercontent.com/u/61909748?s=460&u=b04a687a319bd95e2a847db72904de04bab75c10&v=4"),
                  filename: "#{armando.first_name}.png",
                  content_type: 'image/png')

juanpablo = User.create!(first_name: "Juan Pablo",
                    last_name: "Castiglioni",
                    email: "test7@test.com",
                    password:"test1234")
juanpablo.photo.attach(io:URI.open("https://avatars0.githubusercontent.com/u/31377374?s=400&u=137efe0bc4787436000d81dc2272ec5c9f761daf&v=4"),
                  filename: "#{juanpablo.first_name}.png",
                  content_type: 'image/png')

mauricio = User.create!(first_name: "Mauricio",
                    last_name: "Mas",
                    email: "test8@test.com",
                    password:"test1234")
mauricio.photo.attach(io:URI.open("https://avatars0.githubusercontent.com/u/57006186?s=400&u=42a27c233467761a58f34f4c5646c855cc98be96&v=4"),
                  filename: "#{mauricio.first_name}.jpg",
                  content_type: 'image/png')

ernesto = User.create!(first_name: "Ernesto",
                    last_name: "Alvarado",
                    email: "test9@test.com",
                    password:"test1234")
ernesto.photo.attach(io:URI.open("https://avatars1.githubusercontent.com/u/59773487?s=460&u=960111d7bdda6a2cbb104246cb0ea6f83cbe0b76&v=4"),
                  filename: "#{ernesto.first_name}.png",
                  content_type: 'image/png')

juan = User.create!(first_name: "Juan",
                    last_name: "Ceschin",
                    email: "test10@test.com",
                    password:"test1234")
juan.photo.attach(io:URI.open("https://avatars3.githubusercontent.com/u/61086902?s=400&u=bb015c5b7472efccee958e9e65900bd64e61a945&v=4"),
                  filename: "#{juan.first_name}.png",
                  content_type: 'image/png')

puts "Done creating Users"
puts ""

puts "Creating Projects..."
project = Project.find_or_create_by!(name: "LCET",
                                     description: "Desarrolla tus skills como developer colaborando con otros, postula tus ideas como project owner o sumate con capital!",
                                     link_1: "http://github.com/1990eam/locodeamosentretodos",
                                     link_2: "https://www.lewagon.com", sponsored: true,
                                     user_id: elian.id)

project = Project.find_or_create_by!(name: "Donde Estan los ATM?",
                                     description: "Accede a la ubicacion de los cajeros con dinero disponible",
                                     link_1: "https://github.com/nbouad/atm-repo",
                                     link_2: "www.loteriadesanluis.com",
                                     user_id: tomas.id)
project.photo.attach(io:URI.open("https://www.kindpng.com/picc/m/158-1580128_adobe-type-manager-light-download-windows-version-atm.png"),
                     filename: "#{project.name}.png",
                     content_type: 'image/png')
project.save

project = Project.find_or_create_by!(name: "La Liga",
                                     description: "Apreta en las subastas judiciales con nosotros y gana maravillosos premios",
                                     link_1: "https://www.clarin.com/policiales/videos-hundieron-liga-millonaria-mafia-remates-inmobiliarios_0_f-QbiFIjT.html",
                                     sponsored: true,
                                     user_id: amy.id)
project.photo.attach(io:URI.open("https://infocielo.com/uploads/noticias/imagenes/a/2020/06/20200609161507_grondona.jpg"),
                     filename: "#{project.name}.png",
                     content_type: 'image/png')
project.save

project = Project.find_or_create_by!(name: "GreenFreight",
                                     description: "Ayudanos a transportar cargas reduciendo la huella de carbono y ahorrando costos a transportistas y clientes",
                                     link_1: "https://en.wikipedia.org/wiki/Hugo_Moyano",
                                     link_2: "https://github.com/getsentry/freight",
                                     user_id: nadia.id)
project.photo.attach(io:URI.open("https://europeanshippers.eu/wp-content/uploads/2019/09/GFE_logo-271x300.jpg"),
                     filename: "#{project.name}.png",
                     content_type: 'image/png')
project.save

project = Project.find_or_create_by!(name: "Tu Dieta en Piloto Automático",
                                     description: "Armamos una dieta a tu medida y te ayudamos a prepararla",
                                     link_1: "https://www.dietascormillot.com",
                                     link_2: "https://bitbucket.org/nikhilm/rust-diet",
                                     user_id: juan.id)
project.photo.attach(io:URI.open("https://recognizeyourworld.com/wp-content/uploads/2016/01/Healthy-Food-Logo.jpg"),
                     filename: "#{project.name}.png",
                     content_type: 'image/png')
project.save

project = Project.find_or_create_by!(name: "Dreschrr",
                                     description: "Tu solución a todos tus problemas hogareños con garantía de confianza, seguridad y responsabilidad social",
                                     link_1: "https://www.linkedin.com/company/nanny-network",
                                     link_2: "https://www.instagram.com/officialfrandrescher", sponsored: true,
                                     user_id: pablo.id)
project.photo.attach(io:URI.open("https://www.concordmonitor.com/getattachment/5b3199a8-fb92-481e-b95a-d2f0e0e228d2/WORSTMOMENTDRESCHER-cm-04xx20-ph33"),
                     filename: "#{project.name}.png",
                     content_type: 'image/png')
project.save

puts "Done creating Projects"
puts ""


puts "Creating Roles..."
first_role = Role.find_or_create_by!(name: "Back-End Dev",
                        description: "Mantener el Back-End de la plataforma utilizando Rails, JS, Ruby y más",
                        project_id: Project.first.id)
second_role = Role.find_or_create_by!(name: "Front-End Dev",
                        description: "Diseñador Front-End con conocimientos intermedios de HTML/CSS y básicos de ROR",
                        project_id: Project.first.id)
third_role = Role.find_or_create_by!(name: "Front-End Dev",
                        description: "Diseñador Front-End con conocimientos intermedios de HTML/CSS y básicos de ROR",
                        project_id: Project.second.id)
fourth_role = Role.find_or_create_by!(name: "Project Manager",
                        description: "Experiencia en Agile, Scrum y conocimientos básicos de Python",
                        project_id: Project.first.id)
fifth_role = Role.find_or_create_by!(name: "Project Manager",
                        description: "Experiencia en Agile, Scrum y conocimientos básicos de Python",
                        project_id: Project.second.id)
sixth_role = Role.find_or_create_by!(name: "Seguridad",
                        description: "Fajar a los que se hacen los piolas",
                        project_id: Project.third.id)
seventh_role = Role.find_or_create_by!(name: "Cobranzas",
                        description: "Colaborador paciente, creativo y con iniciativa para recuperar capitales difíciles",
                        project_id: Project.third.id)
eighth_role = Role.find_or_create_by!(name: "Back-End Dev",
                        description: "Mantener el Back-End de la plataforma utilizando Rails, JS, Ruby y más",
                        project_id: Project.fourth.id)
ninth_role = Role.find_or_create_by!(name: "Front-End Dev Master",
                        description: "Diseñador Front-End con mucha experiencia en React",
                        project_id: Project.fourth.id)
tenth_role = Role.find_or_create_by!(name: "Project Manager",
                        description: "Experiencia en Agile, Scrum y conocimientos básicos de Java",
                        project_id: Project.fourth.id)
eleventh_role = Role.find_or_create_by!(name: "Back and Front-End Dev",
                        description: "Mantener el Back-End de la plataforma y conocimientos básicos de diseño",
                        project_id: Project.fifth.id)
twelfth_role = Role.find_or_create_by!(name: "Nutricionista",
                        description: "Conocimiento académico para darnos insight acerca de cómo combinar alimentos y comidas",
                        project_id: Project.fifth.id)
thirteenth_role = Role.find_or_create_by!(name: "Back and Front-End Dev",
                        description: "Mantener el Back-End de la plataforma y conocimientos básicos de diseño",
                        project_id: Project.last.id)
fourteenth_role = Role.find_or_create_by!(name: "Acompañante Terapéutico",
                        description: "Insight acerca del cuidado de niños, personas mayores y discapacitados",
                        project_id: Project.last.id)
fifteenth_role = Role.find_or_create_by!(name: "AI Specialist",
                        description: "Experiencia en modelos predictivos, inteligencia artificial y redes neuronales para contribuir con la construcción de las dietas",
                        project_id: Project.fifth.id)
sixteenth_role = Role.find_or_create_by!(name: "AI Specialist",
                        description: "Experiencia en modelos predictivos, inteligencia artificial y logística para ayudar con las rutas de freight",
                        project_id: Project.fourth.id)
seventeenth_role = Role.find_or_create_by!(name: "HR Coordinator",
                        description: "Ayuda entre la coordinación del personal de la plataforma y nuestros clientes",
                        project_id: Project.last.id)
eighteenth_role = Role.find_or_create_by!(name: "Data Scientist",
                        description: "Data scraping global para generar insights dentro de la plataforma",
                        project_id: Project.second.id)
nineteenth_role = Role.find_or_create_by!(name: "Project Manager",
                        description: "Experiencia trabajando y coordinando con clientes difíciles",
                        project_id: Project.third.id)
twentieth_role = Role.find_or_create_by!(name: "Back and Front-End Dev",
                        description: "Mantener el Back-End de la plataforma y conocimientos básicos de diseño",
                        project_id: Project.third.id)

puts "Done creating Roles"
puts ""

puts "Assigning project owners to roles..."
Collaborator.find_or_create_by!(role_id: Project.find_by_name("LCET").roles.first.id,
                                user_id: Project.find_by_name("LCET").user.id,
                                status: "active")
Collaborator.find_or_create_by!(role_id: Project.find_by_name("Donde Estan los ATM?").roles.first.id,
                                user_id: Project.find_by_name("Donde Estan los ATM?").user.id,
                                status: "active")
Collaborator.find_or_create_by!(role_id: Project.find_by_name("La Liga").roles.first.id,
                                user_id: Project.find_by_name("La Liga").user.id,
                                status: "active")
Collaborator.find_or_create_by!(role_id: Project.find_by_name("GreenFreight").roles.first.id,
                                user_id: Project.find_by_name("GreenFreight").user.id,
                                status: "active")
Collaborator.find_or_create_by!(role_id: Project.find_by_name("Tu Dieta en Piloto Automático").roles.first.id,
                                user_id: Project.find_by_name("Tu Dieta en Piloto Automático").user.id,
                                status: "active")
Collaborator.find_or_create_by!(role_id: Project.find_by_name("Dreschrr").roles.first.id,
                                user_id: Project.find_by_name("Dreschrr").user.id,
                                status: "active")
puts "Done assigning"
puts ""

puts "Creating applications..."
ApplicationRequest.find_or_create_by!(status: "accepted", user_id: nadia.id,
                                      role_id: second_role.id,
                                      about_me: "Soy el mejor Dev que podes pagar :)")
ApplicationRequest.find_or_create_by!(status: "declined by owner", user_id: elian.id,
                                      role_id: fourth_role.id,
                                      about_me: "Trabajé mucho en management de proyectos en Somalia")
ApplicationRequest.find_or_create_by!(status: "pending response from applicant", user_id: ernesto.id,
                                      role_id: fourth_role.id,
                                      about_me: "Fui mano derecha de Mark Zuckerberg por tres años")
ApplicationRequest.find_or_create_by!(status: "accepted", user_id: mauricio.id,
                                      role_id: fifth_role.id,
                                      about_me: "Certificado como PMI-ACP")
ApplicationRequest.find_or_create_by!(status: "pending response from applicant", user_id: juanpablo.id,
                                      role_id: seventh_role.id,
                                      about_me: "Trabajé para Coppel yendo a cobrar a Jose C Paz y Paso del Rey")
ApplicationRequest.find_or_create_by!(status: "declined by user", user_id: mauricio.id,
                                      role_id: ninth_role.id,
                                      about_me: "Demasiado prendido para este mundo")
ApplicationRequest.find_or_create_by!(status: "accepted", user_id: armando.id,
                                      role_id: tenth_role.id,
                                      about_me: "Ex Scrum Master en Globant por varios años")
ApplicationRequest.find_or_create_by!(user_id: armando.id,
                                      role_id: twelfth_role.id,
                                      about_me: "Ex alumno de Cormillot")
ApplicationRequest.find_or_create_by!(status: "accepted", user_id: juanpablo.id,
                                      role_id: sixteenth_role.id,
                                      about_me: "Científico de datos de renombre")
ApplicationRequest.find_or_create_by!(status: "accepted", user_id: pablo.id,
                                      role_id: eighteenth_role.id,
                                      about_me: "Científico de datos de renombre")
ApplicationRequest.find_or_create_by!(status: "accepted", user_id: mauricio.id,
                                      role_id: nineteenth_role.id,
                                      about_me: "Ex Scrum Master en Globant por varios años")
puts "Done creating Applications"
puts ""

# 1 2 3 5 6 8 10 11 13 16 17 19

puts "Creating Levels..."
Level.find_or_create_by!(name: "junior")
Level.find_or_create_by!(name: "semisenior")
Level.find_or_create_by!(name: "senior")
Level.find_or_create_by!(name: "master")
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
violence = Technology.find_or_create_by!(name: "Violence")
intimidation = Technology.find_or_create_by!(name: "Intimidation")
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

puts "Done creating skills"
