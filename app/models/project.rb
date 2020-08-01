class Project < ApplicationRecord
  belongs_to :user
  has_many :roles, dependent: :destroy
  has_one_attached :photo
  validates :name, presence: true
  validates :description, presence: true, length: { in: 6..20 }
  validates :description, presence: true
  validates :name, uniqueness: true


end
