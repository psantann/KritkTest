require 'test_helper'

class ProductReviewsControllerTest < ActionController::TestCase
  def test_index
    get :index
    assert_template 'index'
  end
  
  def test_show
    get :show, :id => ProductReview.first
    assert_template 'show'
  end
  
  def test_new
    get :new
    assert_template 'new'
  end
  
  def test_create_invalid
    ProductReview.any_instance.stubs(:valid?).returns(false)
    post :create
    assert_template 'new'
  end
  
  def test_create_valid
    ProductReview.any_instance.stubs(:valid?).returns(true)
    post :create
    assert_redirected_to product_review_url(assigns(:product_review))
  end
  
  def test_edit
    get :edit, :id => ProductReview.first
    assert_template 'edit'
  end
  
  def test_update_invalid
    ProductReview.any_instance.stubs(:valid?).returns(false)
    put :update, :id => ProductReview.first
    assert_template 'edit'
  end
  
  def test_update_valid
    ProductReview.any_instance.stubs(:valid?).returns(true)
    put :update, :id => ProductReview.first
    assert_redirected_to product_review_url(assigns(:product_review))
  end
  
  def test_destroy
    product_review = ProductReview.first
    delete :destroy, :id => product_review
    assert_redirected_to product_reviews_url
    assert !ProductReview.exists?(product_review.id)
  end
end
