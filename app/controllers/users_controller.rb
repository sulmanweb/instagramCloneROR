class UsersController < ApplicationController
  before_action :set_user

  def show
    @posts = Post.where(user_id: @user.id).order("created_at DESC")
  end

  private

  def set_user
    @user = User.friendly.find(params[:id])
  end
end
