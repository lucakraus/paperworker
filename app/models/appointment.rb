class Appointment < ApplicationRecord
  has_many :messages, dependent: :destroy
  has_many :reviews, dependent: :destroy
  belongs_to :paperworker, class_name: "User"
  belongs_to :immigrant, class_name: "User"
  enum :status, [:pending, :accepted, :declined]
end
