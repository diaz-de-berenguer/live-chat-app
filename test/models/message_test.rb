require 'test_helper'

class MessageTest < ActiveSupport::TestCase
  test "shouldn't create Message without content" do
  	message = Message.new(username: "Diego")
  	assert_not message.valid?
  end

  test "shouldn't create Message without username" do
  	message = Message.new(content: "Hola!")
  	assert_not message.valid?
  end

  test "should create Message with username and content" do
  	message = Message.new(username: "Diego", content: "Hola!")
  	assert message.valid?, "#{message.errors.full_messages}"
  end
end
