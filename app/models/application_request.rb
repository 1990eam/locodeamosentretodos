class ApplicationRequest < ApplicationRecord
  after_commit :save_user_as_collaborator, on: [:update, :create]

  belongs_to :role
  belongs_to :user
  validates :about_me, presence: true, length: { in: 10..300 }

  def save_user_as_collaborator
    if status == "Accepted"
      collaborator = Collaborator.new(role_id: role_id, user_id: user_id, status: "active")
      collaborator.save!
    end
  end
end
