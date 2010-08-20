require 'test_helper'

class KritkTest < ActiveSupport::TestCase
  def test_should_be_valid
    assert Kritk.new.valid?
  end
end
