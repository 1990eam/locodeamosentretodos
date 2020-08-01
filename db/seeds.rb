puts "Creating Users"

user = User.new(first_name: "ElRey", last_name: "DelCodeo", email: "test@test.com", password:"test1234", admin: true)
user.save

user = User.new(first_name: "Samid", last_name: "Carnaza", email: "test2@test.com", password:"test1234")
user.save

puts "Creating projects"

project = Project.new(name: "Lo Codeamos", description: "El mejor proyecto final de LeWagon #384")
project.user = User.first
project.save

project = Project.new(name: "Donde Estan los ATM?", description: "Accede a la ubicacion de los cajeros con guita")
project.user = User.second
project.save
