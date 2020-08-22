class Chatroom < ApplicationRecord
  has_many :messages, dependent: :destroy
  belongs_to :application_request
end
