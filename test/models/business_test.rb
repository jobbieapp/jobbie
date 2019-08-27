require 'test_helper'

class BusinessTest < ActiveSupport::TestCase
  test "should not save without title" do
    business = Business.new
    business.save
    err = business.errors.messages
    assert err[:name] = "can't be blank"
  end

  test "should save" do
    business = Business.new(name: 'BetterBusiness')
    assert business.save
  end
end
