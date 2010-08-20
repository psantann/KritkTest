require 'test_helper'

class ProductReviewTest < ActiveSupport::TestCase
  def test_should_be_valid
    assert ProductReview.new.valid?
  end
end
