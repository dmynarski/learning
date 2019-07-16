class Doctor < ApplicationRecord
  before_save { self.email = email.downcase }
  validates :name, presence: true, length: { minimum: 4, maximum: 25}
  validates :surname, presence: true, length: { minimum: 4, maximum: 25}
  VALID_EMAIL_REGEX = /\A[\w\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
  validates :email, presence: true, length: { minimum: 4, maximum: 50}, format: { with: VALID_EMAIL_REGEX }, uniqueness: { case_sensitive: false }
  has_many :appointments
  has_many :patients, :through => :appointments
  has_secure_password
  validates :password, presence: true, length: { minimum: 7, maximum: 25}
  belongs_to :specialization

  def to_s
    "#{name} #{surname} Specialization: #{specialization.to_s}"
  end
end