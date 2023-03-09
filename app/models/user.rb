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
  has_one_attached :photo
  # validates :services, inclusion: SERVICES

  SERVICES = ["translation", "legal", "appointment"].sort
  LANGUAGES = ["English", "Spanish", "French", "Arabic", "Persian", "Portuguese", "Chinese", "Japanese", "Korean", "Pashto", "Swahili", "Hindi", "Russian", "Polish", "Ukrainian", "Turkish"].sort
  DISTRICT = ["Mitte", "Reinickendorf", "Pankow", "Friedrichshain-Kreuzberg", "Treptow-Köpenick", "Lichtenberg", "Marzahn-Hellersdorf", "Neukölln", "Tempelhof-Schöneberg", "Steglitz-Zehlendorf", "Charlottenburg-Wilmersdorf", "Spandau"].sort
end
# current_user.paperworker?
# User.paperworker

# collestion: User::SERVICES
