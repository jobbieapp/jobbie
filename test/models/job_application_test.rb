require 'test_helper'

class JobApplicationTest < ActiveSupport::TestCase
  test "should not save without required attributes" do
    job_application = JobApplication.new(user: users(:userperson))
    assert_not job_application.save
    err = job_application.errors.messages
    assert err[:opening] = "must exist"
    assert err[:business] = "must exist"
  end

  test "should not save a user who has already applied" do
    job_application = JobApplication.new(
      user: users(:userperson),
      opening: openings(:bestopening),
      business: businesses(:bestbusiness))
    assert_not job_application.save
    err = job_application.errors.messages
    assert err[:opening] = "has already been taken"
  end

  test "should save" do
    job_application = JobApplication.new(
      user: users(:userperson),
      opening: openings(:anotheropening),
      business: businesses(:bestbusiness))
    assert job_application.save
  end
end
