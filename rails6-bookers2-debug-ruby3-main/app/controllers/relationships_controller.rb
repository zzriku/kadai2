class RelationshipsController < ApplicationController
  def create
    current_user.follow(params[:user_id])
    redirect_to request.referer
  end
  def destroy
    current_user.unfollow(params[:user_id])
    redirect_to request.referer
  end
  
  def followings
    user = User.find(params[:user_id])
    @users = user.followings
  end

  def followers
    user = User.find(params[:user_id])
    @users = user.followers
  end
  
private
  def relationship_params
    params.require(:relationship).permit(:follower_id, :followed_id)
  end
end