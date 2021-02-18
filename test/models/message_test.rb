require "test_helper"

class MessageTest < ActiveSupport::TestCase
  def setup
    @message = messages(:valid)
  end

  test "valid message" do
    assert @message.valid?
  end

  test "invalid message" do
    @message.body = ''
    refute @message.valid?
  end
end
