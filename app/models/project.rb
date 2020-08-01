class Project < ApplicationRecord
  belongs_to :user
  has_many :roles, dependent: :destroy
  # Revisar
  has_many :requirements, through: :roles
  # --------
  has_one_attached :photo
  validates :name, presence: true
  validates :description, presence: true, length: { in: 6..500 }
  validates :name, uniqueness: true
  # validate :photo_present

  # def photo_present
  #   unless photo.attached?
  #     photo.attach(io: File.open(Dir.getwd + "/app/assets/images/project-defaut.png"), filename: "default.png", content_type: 'image/png')
  #   end
  # end
end
