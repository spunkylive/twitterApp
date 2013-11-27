class FollowersController < ApplicationController

  before_filter :login_required, :only => [:create, :destroy]

  def create
    @follower = current_user.followers.build(:follower_id => params[:follower_id])
    if @follower.save
      follower = User.find params[:follower_id]
      flash[:notice] = "Now you are following "+follower.username.to_s
      redirect_to root_url
    else
      flash[:error] = "Error occurred when adding friend."
      redirect_to root_url
    end
  end

  def destroy
    @follower = current_user.friendships.find(params[:id])
    @follower.destroy
    flash[:notice] = "Successfully destroyed follower."
    redirect_to root_url
  end

end
