class UsersController < ApplicationController
  def new
    @user = User.new
  end

  def show
    @user = User.find(params[:id])
    @books = @user.books.order(created_at: :desc)
    @book = Book.new
  end

  def edit
    @user = User.find(params[:id])
  end

  def index
    @users = User.all
    @book = Book.new
    #@user = User.find(params[:id])
  end

  def user_params
    params.require(:user).permit(:image, :name, :introduction)
  end

end
