class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  devise :omniauthable, omniauth_providers: [:github]
  has_many :projects, dependent: :destroy
  has_many :collaborators, dependent: :destroy
  has_many :roles, through: :collaborators
  has_many :skills, dependent: :destroy
  has_many :technologies, through: :skills
  has_many :levels, through: :skills
  has_many :application_requests, dependent: :destroy
  has_many :chatrooms, through: :application_requests
  has_one_attached :photo
  validates :first_name, :last_name, presence: true
  validate :photo_present

  def photo_present
    unless photo.attached? || github_picture_url
      photo.attach(io: File.open(Dir.getwd + "/app/assets/images/default-user-img.png"), filename: "default.png", content_type: 'image/png')
    end
  end

  def self.find_for_github_oauth(auth)
    full_name_array = auth.info[:name].split
    user_params = auth.slice("provider", "uid")
    user_params.merge! auth.info.slice("email")
    user_params.merge!(first_name: full_name_array.first, last_name: full_name_array.last)
    user_params[:github_picture_url] = auth.info.image
    user_params[:token] = auth.credentials.token
    if (expires_at = auth.credentials.expires_at.presence)
      user_params[:token_expiry] = Time.at(expires_at)
    end
    user_params = user_params.to_h

    user = User.find_by(provider: auth.provider, uid: auth.uid)
    user ||= User.find_by(email: auth.info.email) # User did a regular sign up in the past.
    if user
      user.update!(user_params)
    else
      user = User.new(user_params)
      user.password = Devise.friendly_token[0, 20] # Fake password for validation
      user.save!
    end

    return user
  end
end
