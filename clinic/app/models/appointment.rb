class Appointment < ApplicationRecord
  validates :date, presence: true
  belongs_to :patient
  belongs_to :doctor
end