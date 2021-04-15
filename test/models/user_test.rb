require "test_helper"

class UserTest < ActiveSupport::TestCase
	test "should not save user without email" do
		user = User.new
		assert_not user.save
	end

	test "should save user with email" do
		user = User.new
		user.email = "mark@blarg.com"
		user.password = "password"
		assert user.save
	end
  # test "the truth" do
  #   assert true
  # end
end
