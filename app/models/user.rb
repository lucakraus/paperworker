class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :appointments_as_immigrant, class_name: "Appointment", foreign_key: :immigrant_id, dependent: :destroy
  has_many :appointments_as_paperworker, class_name: "Appointment", foreign_key: :paperworker_id, dependent: :destroy
  has_many :reviews, dependent: :destroy
  has_many :messages, dependent: :destroy
  enum :role, [:paperworker, :immigrant]
  validates :name, :languages, :services, :rate, :role, presence: true
  validates :services, inclusion: ["translation", "legal", "appointment"]
end
# current_user.paperworker?
# User.paperworker
