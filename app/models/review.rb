class Review < ApplicationRecord
  belongs_to :user
  belongs_to :appointment
  validates :rating, presence: true
  validates :rating, numericality: { in: 1..5 }
end
