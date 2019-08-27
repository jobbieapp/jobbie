class JobApplication < ApplicationRecord
  belongs_to :user
  belongs_to :opening
  belongs_to :business

  validate :user_has_not_applied_before

  private

  def user_has_not_applied_before
    if opening.job_applications.where(user: user).any?
      errors.add(:base, 'You have already applied to this position')
    end
  end
end
