class Business < ApplicationRecord
  has_many :admins

  validates :name, presence: true
end
