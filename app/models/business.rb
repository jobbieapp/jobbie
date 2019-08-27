class Business < ApplicationRecord
  has_many :admins
  has_many :openings
  has_many :job_applications

  validates :name, presence: true
end
