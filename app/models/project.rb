class Project < ApplicationRecord
  belongs_to :user
  has_many :roles, dependent: :destroy
  # Revisar
  has_many :requirements, through: :roles
  # --------
  has_many :collaborators, through: :roles
  has_many :application_requests, through: :roles
  has_one_attached :photo
  validates :name, presence: true
  validates :description, presence: true, length: { in: 6..500 }
  validates :name, uniqueness: true
  validate :photo_present
  validate :links_with_httpwww_removed

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
end
