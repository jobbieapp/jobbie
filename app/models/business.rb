class Business < ApplicationRecord
  has_many :admins
  has_many :openings

  validates :name, presence: true
end
