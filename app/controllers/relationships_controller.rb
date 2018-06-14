class RelationshipsController < ApplicationController
  before_action :logged_in_user
  before_action :load_user_follow, only: :create
  before_action :load_user_unfollow, only: :destroy

  def create
    current_user.follow @user
    respond_to do |format|
      format.html{redirect_to @user}
      format.js
    end
  end

  def destroy
    current_user.unfollow @user
    respond_to do |format|
      format.html{redirect_to @user}
      format.js
    end
  end

  private

  def load_user_follow
    @user = User.find_by id: params[:followed_id]
    redirect_to root_path unless @user
  end

  def load_user_unfollow
    @user = Relationship.find_by(id: params[:id]).followed
    redirect_to root_path unless @user
  end
end
