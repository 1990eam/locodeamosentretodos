class Role < ApplicationRecord
  belongs_to :project
  has_many :collaborators
  has_many :users, through: :collaborators
  has_many :requirements
  validates :name, presence: true


  # scope :sin_candidato, -> { where(collaborator: nil) }

end
