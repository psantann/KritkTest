require 'test_helper'

class SocialFriendTest < ActiveSupport::TestCase
  def test_should_be_valid
    assert SocialFriend.new.valid?
  end
end
