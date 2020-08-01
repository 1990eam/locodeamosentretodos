class Collaborator < ApplicationRecord
  belongs_to :role
  belongs_to :user
  validates :status, presence: true, inclusion: { in: ["active", "paused"] }
end
