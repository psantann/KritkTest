class SocialFriendsController < ApplicationController
  def index
    @social_friends = SocialFriend.all
  end
  
  def show
    @social_friend = SocialFriend.find(params[:id])
  end
  
  def new
    @social_friend = SocialFriend.new
  end
  
  def create
    @social_friend = SocialFriend.new(params[:social_friend])
    if @social_friend.save
      flash[:notice] = "Successfully created social friend."
      redirect_to @social_friend
    else
      render :action => 'new'
    end
  end
  
  def edit
    @social_friend = SocialFriend.find(params[:id])
  end
  
  def update
    @social_friend = SocialFriend.find(params[:id])
    if @social_friend.update_attributes(params[:social_friend])
      flash[:notice] = "Successfully updated social friend."
      redirect_to @social_friend
    else
      render :action => 'edit'
    end
  end
  
  def destroy
    @social_friend = SocialFriend.find(params[:id])
    @social_friend.destroy
    flash[:notice] = "Successfully destroyed social friend."
    redirect_to social_friends_url
  end
end
