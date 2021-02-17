require "test_helper"

class UserTest < ActiveSupport::TestCase
  test "valid user" do
    user = User.new(username: 'John', password: 'password')
    assert user.valid?
  end

  test "invalid without username" do
    user = User.new()
    refute user.valid?
  end

  test "invalid with used username" do
    user1 = User.new(username: 'John')
    user2 = User.new(username: 'John')
    refute user2.valid?
  end
end
