class Opening < ApplicationRecord
  belongs_to :business
  belongs_to :admin

  has_many :job_applications

  validates :title, presence: true
  validates :description, presence: true

  def user_has_applied?(user)
    job_applications.where(user: user).any?
  end
end
