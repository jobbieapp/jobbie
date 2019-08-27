require 'test_helper'

class OpeningTest < ActiveSupport::TestCase
  test "should not save without required attributes" do
    opening = Opening.new
    assert_not opening.save
    err = opening.errors.messages
    assert err[:admin] = "must exist"
    assert err[:business] = "must exist"
    assert err[:title] = "can't be blank"
    assert err[:description] = "can't be blank"
  end

  test "should save" do
    opening = Opening.new(
      business: businesses(:bestbusiness),
      admin: admins(:adminperson),
      title: 'Best Opening', 
      description: 'My Description')
    assert opening.save
  end
end
