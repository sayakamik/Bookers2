class UsersController < ApplicationController
  def show
    @user = User.find(params[:id])
    @users = User.all
    @books = Book.all
    @book = Book.new

  end

  def edit
    @user = User.find(params[:id])
  end

  def index
    @user = User.find(params[:id])
    @users = User.all
    @book = Book.new
    @books = Book.all
  end

  def book_params
    params.require(:book).permit(:image, :title, :body)
  end

end
