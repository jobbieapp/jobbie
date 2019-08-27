class JobApplication < ApplicationRecord
  belongs_to :user
  belongs_to :opening
  belongs_to :business

  validates :opening, uniqueness: { scope: :user }
end
