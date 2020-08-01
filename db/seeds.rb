puts "Cleaning DB"
User.destroy_all
Project.destroy_all
# Role.destroy_all
# Level.destroy_all
# Technology.destroy_all

puts "Creating Users..."
User.create!(first_name: "ElRey", last_name: "DelCodeo", email: "test@test.com", password:"test1234", admin: true)
User.create!(first_name: "Samid", last_name: "Carnaza", email: "test2@test.com", password:"test1234")
User.create!(first_name: "Diego", last_name: "Armando", email: "test3@test.com", password:"test1234")
User.create!(first_name: "Hackerman", last_name: "Coder", email: "test4@test.com", password:"test1234")
puts "done"

puts "Creating Projects..."
project = Project.new(name: "Lo Codeamos", description: "El mejor proyecto final de LeWagon #384")
project.user = User.first
project.save
project = Project.new(name: "Donde Estan los ATM?", description: "Accede a la ubicacion de los cajeros con guita")
project.user = User.second
project.save
puts "done"

# puts "Creating Roles..."
# role = Role.new(name: "Backend Dev")
# role.project_id = Project.first.id
# role.save
# role = Role.new(name: "Frontend Dev")
# role.project_id = Project.first.id
# role.save
# role = Role.new(name: "Project Manager")
# role.project_id = Project.first.id
# role.save
# puts "done"

# puts "Creating levels"
# level = Level.new(name: "Junior")
# level.save
# level = Level.new(name: "Semi senior")
# level.save
# level = Level.new(name: "Senior")
# level.save
# puts "done"

# puts "Creating Technologies..."
# tech = Technology.new(name: "Ruby")
# tech.save
# tech = Technology.new(name: "Javascript")
# tech.save
# tech = Technology.new(name: "CSS")
# tech.save
# tech = Technology.new(name: "Java")
# tech.save
# tech = Technology.new(name: "Python")
# tech.save
# tech = Technology.new(name: "React")
# tech.save
# puts "done"

# puts "Creating Requirements"
# requirement = Requirement.new(role_id: Role.first.id, technology_id: Technology.first.id, level_id: Level.first.id)
# requirement.save
# requirement = Requirement.new(role_id: Role.second.id, technology_id: Technology.first.id, level_id: Level.first.id)
# requirement.save
# puts "done"

# puts "Creating applications"
# application = Application.new(status: "Pending")
# application.role_id = Role.first.id
# application.user_id = User.first.id
# application.save
# application = Application.new(status: "Accepted")
# application.role_id = Role.second.id
# application.user_id = User.second.id
# application.save
# application = Application.new(status: "Declined")
# application.role_id = Role.third.id
# application.user_id = User.third.id
# application.save
# application = Application.new(status: "Accepted")
# application.role_id = Role.third.id
# application.user_id = User.fourth.id
# application.save
# puts "done"

# puts "Creating collaborators"
# collab = Collaborator.new
# collab.role_id = Role.first.id
# collab.user_id = User.second.id
# collab.save
# collab = Collaborator.new
# collab.role_id = Role.first.id
# collab.user_id = User.fourth.id
# collab.save
# puts "done"
