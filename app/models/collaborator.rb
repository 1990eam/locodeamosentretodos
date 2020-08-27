class Collaborator < ApplicationRecord
  belongs_to :role
  belongs_to :user
  has_many :suggestions
  has_many :suggestion_votes, dependent: :destroy
  validates :status, presence: true, inclusion: { in: ["active", "paused", "finished", "removed"] }
end
