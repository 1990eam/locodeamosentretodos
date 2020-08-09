puts "Cleaning DB"
User.destroy_all
Project.destroy_all
Role.destroy_all
ApplicationRequest.destroy_all
Level.destroy_all
Technology.destroy_all
Requirement.destroy_all
puts "done cleaning"

puts "Creating Users..."
User.create!(first_name: "ElRey", last_name: "DelCodeo", email: "test@test.com", password:"test1234", admin: true)
User.create!(first_name: "Samid", last_name: "Carnaza", email: "test2@test.com", password:"test1234")
User.create!(first_name: "Diego", last_name: "Armando", email: "test3@test.com", password:"test1234")
User.create!(first_name: "Hackerman", last_name: "Coder", email: "test4@test.com", password:"test1234")
puts "done creating Users"

puts "Creating Projects..."
project = Project.new(name: "Lo Codeamos", description: "El mejor proyecto final de LeWagon #384", link_1: "http://github.com/1990eam/locodeamosentretodos/", link_2: "www.loteriadesanluis.com", sponsored: true)
project.user = User.first
project.save
project = Project.new(name: "Donde Estan los ATM?", description: "Accede a la ubicacion de los cajeros con guita")
project.user = User.second
project.photo.attach(io:URI.open("https://pbs.twimg.com/profile_images/1271104593951408134/6gNhxW4h_400x400.jpg"), filename: "#{project.name}.png", content_type: 'image/png')
project.save
project = Project.new(name: "La Liga", description: "Apreta en las subastas judiciales con nosotros y gana maravillosos premios", link_1: "awesomeopensource.com/project/danielbayerlein/dashboard", sponsored: true)
project.user = User.third
project.photo.attach(io:URI.open("https://infocielo.com/uploads/noticias/imagenes/a/2020/06/20200609161507_grondona.jpg"), filename: "#{project.name}.png", content_type: 'image/png')
project.save
puts "done creating Projects"

puts "Creating Roles..."
role = Role.new(name: "Backend Dev", description: "Mantain the backend of the platform with Rails")
role.project_id = Project.first.id
role.save
role = Role.new(name: "Frontend Dev", description: "Spice up the frontend with magic")
role.project_id = Project.second.id
role.save
role = Role.new(name: "Project Manager", description: "Asignar features a los colaboradores")
role.project_id = Project.first.id
role.save
role = Role.new(name: "Patotero", description: "Fajar a los que se hacen los piolas")
role.project_id = Project.third.id
role.save
puts "done creating Roles"

puts "Creating applications"
# default status for applications is now "pending"
application = ApplicationRequest.new(user_id: User.first.id)
application.role_id = Role.first.id
application.about_me = "Please let me in, I need money for weed"
application.save
application = ApplicationRequest.new(status: "Accepted", user_id: User.second.id)
application.role_id = Role.second.id
application.about_me = "I'm the best dev you can get for the money"
application.save
application = ApplicationRequest.new(status: "Accepted", user_id: User.third.id)
application.role_id = Role.third.id
application.about_me = "I learned from the bests @ LeWagon"
application.save
application = ApplicationRequest.new(status: "Declined", user_id: User.fourth.id)
application.about_me = "Hello, this would be my first job"
application.role_id = Role.third.id
application.save
puts "done creating Applications"

puts "Creating levels"
level = Level.new(name: "junior")
level.save
level = Level.new(name: "semisenior")
level.save
level = Level.new(name: "senior")
level.save
level = Level.new(name: "master")
level.save
puts "done"

puts "Creating Technologies..."
tech = Technology.new(name: "Ruby")
tech.save
tech = Technology.new(name: "Javascript")
tech.save
tech = Technology.new(name: "CSS")
tech.save
tech = Technology.new(name: "Java")
tech.save
tech = Technology.new(name: "Python")
tech.save
tech = Technology.new(name: "React")
tech.save
tech = Technology.new(name: "Plain Old Violence")
tech.save
puts "done"

puts "Creating Requirements"
requirement = Requirement.new(role_id: Role.first.id, technology_id: Technology.first.id, level_id: Level.first.id)
requirement.save
requirement = Requirement.new(role_id: Role.second.id, technology_id: Technology.second.id, level_id: Level.second.id)
requirement.save
requirement = Requirement.new(role_id: Role.third.id, technology_id: Technology.third.id, level_id: Level.first.id)
requirement.save
requirement = Requirement.new(role_id: Role.fourth.id, technology_id: Technology.last.id, level_id: Level.third.id)
requirement.save
requirement = Requirement.new(role_id: Role.first.id, technology_id: Technology.fourth.id, level_id: Level.second.id)
requirement.save
requirement = Requirement.new(role_id: Role.fourth.id, technology_id: Technology.fourth.id, level_id: Level.second.id)
requirement.save
requirement = Requirement.new(role_id: Role.second.id, technology_id: Technology.fifth.id, level_id: Level.second.id)
requirement.save
puts "done"

puts "Creating Skills"
skill = Skill.create!(user: User.first, technology: Technology.first, level: Level.first)
skill = Skill.create!(user: User.first, technology: Technology.second, level: Level.second)
skill = Skill.create!(user: User.second, technology: Technology.first, level: Level.third)
puts "done"

