class ApplicationRequest < ApplicationRecord
  after_commit :save_user_as_collaborator, on: [:update, :create]
  after_commit :create_chatroom, on: [:create]

  belongs_to :role
  has_one :project, through: :role
  has_one :chatroom
  belongs_to :user
  validates :about_me, presence: true, length: { in: 10..300 }
  validates :status, inclusion: { in: ['pending', 'accepted', 'declined by user', 'declined by owner', 'pending response from applicant'] }
  def save_user_as_collaborator
    if status == "accepted"
      collaborator = Collaborator.new(role_id: role_id, user_id: user_id, status: "active")
      collaborator.save!
    end
  end

  def create_chatroom
    @chatroom = Chatroom.new(name: "Aplicación de #{user.first_name} #{user.last_name} para el puesto de #{role.name}")
    @chatroom.application_request = self
    @chatroom.save!
  end

  def technologies
    technologies = []
    self.role.requirements.each do |requirement|
      technologies << requirement.technology.name
    end
    return technologies
  end
end
