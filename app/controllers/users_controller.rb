class UsersController < ApplicationController
  def show
    @user = User.find(params[:id])  
    @Books = @user.books
  end

  def edit
  end


 private
  def user_params
    params.require(:user).permit(:image) 
  end 
end 