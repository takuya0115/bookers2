class UsersController < ApplicationController
  def edit
    @user = User.find(params[:id])
  end

  def show
    @user = User.find(params[:id])
    @profile_images = @user.profile_image
  end

  def index
    @user = current_user
    @profile_images = @user.profile_image
  end
end
