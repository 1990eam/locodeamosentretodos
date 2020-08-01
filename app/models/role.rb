class Role < ApplicationRecord
  belongs_to :project
  has_many :collaborators
  has_many :users, through: :collaborators
  validates :name, presence: true
end
