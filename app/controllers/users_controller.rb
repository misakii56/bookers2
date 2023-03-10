class UsersController < ApplicationController
 before_action :correct_user, only: [:edit, :update]

  def show
    @user = User.find(params[:id])
    @books = @user.books
  end

  def edit
    @user = current_user

  end
  def update
    @user = User.find(params[:id])
  if @user.update(user_params)
    flash[:hoge] = "You have updated user successfully."
    redirect_to user_path
  else
    render :edit
  end
  end
def index
    @users = User.all
    @user = current_user
end

 private



  def user_params
    params.require(:user).permit(:name, :email, :profile_image, :introduction)
  end

  def correct_user
    @user = User.find(params[:id])
    redirect_to user_path(current_user.id) unless @user == current_user
  end
end