class Project < ApplicationRecord
  belongs_to :user
  has_many :roles, dependent: :destroy
  has_many :requirements, through: :roles
  has_many :technologies, through: :requirements
  has_many :collaborators, through: :roles
  has_many :suggestions
  has_many :application_requests, through: :roles
  has_many :chatrooms, through: :application_requests
  has_one_attached :photo
  validates :name, presence: true
  validates :description, presence: true, length: { in: 6..500 }
  validates :name, uniqueness: true
  validate :photo_present
  validate :links_with_httpwww_removed

  # scope :with_open, -> { joins(:roles).merge(Role.vacant) }
  # scope :open_roles, -> { left_outer_joins(:collaborators).where(role: { collaborator_id: nil })}

  #filtro
  def self.with_open_positions
    @projects = []

    Project.all.each do |project|
      @projects << project if project.roles.count { |role| role.open? } > 0
    end
    return @projects
  end


  def self.that_match_my_skills(current_user)
    user = current_user
    @projects = with_open_positions
    @matches = []

    @projects.each do |project|
      @matches << project if project.technologies.any? { |project_tech| user.technologies.any? { |user_tech| user_tech == project_tech } }
    end
    return @matches
  end





  def photo_present
    unless photo.attached?
      photo.attach(io: File.open(Dir.getwd + "/app/assets/images/new hardcode logo.png"), filename: "project-default.png", content_type: 'image/png')
    end
  end


  def links_with_httpwww_removed
    regex = %r{^(?:https?:\/\/)?(?:www\.)?}i
    unless link_1.nil?
      link_1.match?(regex) ? link_1.gsub!(regex, '') : link_1
    end
    unless link_2.nil?
      link_2.match?(regex) ? link_2.gsub!(regex, '') : link_2
    end
  end

  include PgSearch::Model
  pg_search_scope :global_search,
    against: [:name],
    associated_against: {
      roles: [:name],
      technologies: [:name]
    },
    using: {
      tsearch: { prefix: true }
    }
end
