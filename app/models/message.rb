class Message < ApplicationRecord
  belongs_to :user
  belongs_to :appointment
  has_one_attached :photo
end
