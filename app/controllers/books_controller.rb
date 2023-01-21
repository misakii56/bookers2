class BooksController < ApplicationController
  def new
    @book = Book.new
  end

  def index
    @user = User.all.order(created_at: :desc)
   
  end



  def show
  end

  def edit
  end
end
