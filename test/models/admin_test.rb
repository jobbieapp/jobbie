require 'test_helper'

class AdminTest < ActiveSupport::TestCase
  test "should not save without required attributes" do
    admin = Admin.new
    assert_not admin.save
    err = admin.errors.messages
    assert err[:email] = "can't be blank"
    assert err[:password] = "can't be blank"
  end

  test "should save" do
    business = businesses(:bestbusiness)
    admin = Admin.new(
      email: 'lol@example.com',
      password: '123456',
      business: business)
    assert admin.save
  end
end
