class Review < ApplicationRecord
  belongs_to :user
  belongs_to :appointment
  validates :rating, presence: true
end
