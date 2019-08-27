require 'test_helper'

class UserTest < ActiveSupport::TestCase
  test "should not save without required attributes" do
    user = User.new
    assert_not user.save
    err = user.errors.messages
    assert err[:email] = "can't be blank"
    assert err[:password] = "can't be blank"
    assert err[:first_name] = "can't be blank"
    assert err[:last_name] = "can't be blank"
  end

  test "should save" do
    user = User.new(
      email: 'lol@example.com',
      password: '123456',
      first_name: 'user',
      last_name: 'person')
    assert user.save
  end
end
