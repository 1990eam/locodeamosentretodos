class Collaborator < ApplicationRecord
  belongs_to :role
  belongs_to :user
  has_many :suggestions, through: :projects
  has_many :positive_votes
  has_many :negative_votes
  validates :status, presence: true, inclusion: { in: ["active", "paused", "finished", "removed"] }
end
