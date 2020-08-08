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
  validates :first_name, :last_name, presence: true
  has_one_attached :photo
end
