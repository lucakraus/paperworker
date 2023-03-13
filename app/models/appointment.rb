class Appointment < ApplicationRecord
  has_many :messages, dependent: :destroy
  has_many :reviews, dependent: :destroy
  belongs_to :paperworker, class_name: "User"
  belongs_to :immigrant, class_name: "User"
  enum :status, [:pending, :accepted, :declined]
  validates :date, presence: true

  # scope :today_and_future, -> { where("date >= Date.today") }
  # scope :past, -> { where("date < Date.today") }
end


# paperworker.appointments.today_and_future
# paperworker.appointments.past
