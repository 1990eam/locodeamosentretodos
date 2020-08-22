class Role < ApplicationRecord
  belongs_to :project
  has_many :collaborators, dependent: :destroy
  has_one :active_collaborator, -> { where(status: "active") }, class_name: "Collaborator"
  has_many :application_requests, dependent: :destroy
  has_many :users, through: :collaborators
  has_many :requirements, dependent: :destroy
  has_many :technologies, through: :requirements
  has_many :levels, through: :requirements
  validates :name, presence: true


  # scope :open, -> { where(collaborator_id: nil) }


  scope :vacant, -> { joins(:collaborators).
      select('roles.id, count(collaborators.id) AS n_collaborators').
      group('roles.id').
      having('n_collaborators = 0') }


  def open?
    collaborators.where(status: "active").empty?
  end

end
