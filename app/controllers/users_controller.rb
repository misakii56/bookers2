class UsersController < ApplicationController
  def show
    @user = User.find(params[:id])  
    @Books = @user.books
  end

  def edit
  end
end
