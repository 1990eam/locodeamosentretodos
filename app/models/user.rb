class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  has_many :projects, dependent: :destroy
  has_many :collaborators
  has_many :roles, through: :collaborators
  has_many :skills, dependent: :destroy
  has_many :technologies, through: :skills
  has_many :levels, through: :skills
  has_many :application_requests
  has_one_attached :photo
  validates :first_name, :last_name, presence: true
  validate :photo_present

  def photo_present
    unless photo.attached?
      photo.attach(io: File.open(Dir.getwd + "/app/assets/images/default-user-img.png"), filename: "default.png", content_type: 'image/png')
    end
  end
end
