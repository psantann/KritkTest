require 'test_helper'

class SocialFriendsControllerTest < ActionController::TestCase
  def test_index
    get :index
    assert_template 'index'
  end
  
  def test_show
    get :show, :id => SocialFriend.first
    assert_template 'show'
  end
  
  def test_new
    get :new
    assert_template 'new'
  end
  
  def test_create_invalid
    SocialFriend.any_instance.stubs(:valid?).returns(false)
    post :create
    assert_template 'new'
  end
  
  def test_create_valid
    SocialFriend.any_instance.stubs(:valid?).returns(true)
    post :create
    assert_redirected_to social_friend_url(assigns(:social_friend))
  end
  
  def test_edit
    get :edit, :id => SocialFriend.first
    assert_template 'edit'
  end
  
  def test_update_invalid
    SocialFriend.any_instance.stubs(:valid?).returns(false)
    put :update, :id => SocialFriend.first
    assert_template 'edit'
  end
  
  def test_update_valid
    SocialFriend.any_instance.stubs(:valid?).returns(true)
    put :update, :id => SocialFriend.first
    assert_redirected_to social_friend_url(assigns(:social_friend))
  end
  
  def test_destroy
    social_friend = SocialFriend.first
    delete :destroy, :id => social_friend
    assert_redirected_to social_friends_url
    assert !SocialFriend.exists?(social_friend.id)
  end
end
