class Chef < ApplicationRecord
  before_save { self.email = email.downcase }
  validates :chefname, presence: true, length: { minimum: 4, maximum: 15 }
  VALID_EMAIL_REGEX = /\A[\w\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
  validates :email, presence: :true, length: { minimum: 4, maximum: 50 },
            format: { with: VALID_EMAIL_REGEX }, uniqueness: { case_sensitive: false }
end
