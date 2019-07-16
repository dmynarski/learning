class Specialization < ApplicationRecord
  validates :name, presence: true ,uniqueness: { case_sensitive: false }
  has_many :doctors

  def to_s
    "#{name}"
  end
end