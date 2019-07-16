class Patient < ApplicationRecord
  before_save { self.email = email.downcase }
  validates :name, presence: true, length: { minimum: 4, maximum: 25}
  validates :surname, presence: true, length: { minimum: 4, maximum: 25}
  VALID_EMAIL_REGEX = /\A[\w\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
  validates :email, presence: true, length: { minimum: 4, maximum: 50}, format: { with: VALID_EMAIL_REGEX }, uniqueness: { case_sensitive: false }
  has_many :appointments, dependent: :destroy
  has_many :doctors, :through => :appointments
  has_secure_password
  validates :password, presence: true, length: { minimum: 7, maximum: 25}, allow_nil: true
  validates :pesel, presence: true, length: { is: 11 }
end