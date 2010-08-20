require 'test_helper'

class KritksControllerTest < ActionController::TestCase
  def test_index
    get :index
    assert_template 'index'
  end
  
  def test_show
    get :show, :id => Kritk.first
    assert_template 'show'
  end
  
  def test_new
    get :new
    assert_template 'new'
  end
  
  def test_create_invalid
    Kritk.any_instance.stubs(:valid?).returns(false)
    post :create
    assert_template 'new'
  end
  
  def test_create_valid
    Kritk.any_instance.stubs(:valid?).returns(true)
    post :create
    assert_redirected_to kritk_url(assigns(:kritk))
  end
  
  def test_edit
    get :edit, :id => Kritk.first
    assert_template 'edit'
  end
  
  def test_update_invalid
    Kritk.any_instance.stubs(:valid?).returns(false)
    put :update, :id => Kritk.first
    assert_template 'edit'
  end
  
  def test_update_valid
    Kritk.any_instance.stubs(:valid?).returns(true)
    put :update, :id => Kritk.first
    assert_redirected_to kritk_url(assigns(:kritk))
  end
  
  def test_destroy
    kritk = Kritk.first
    delete :destroy, :id => kritk
    assert_redirected_to kritks_url
    assert !Kritk.exists?(kritk.id)
  end
end
