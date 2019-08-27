class Opening < ApplicationRecord
  belongs_to :business
  belongs_to :admin

  validates :title, presence: true
  validates :description, presence: true
end
