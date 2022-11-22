class UsersController < ApplicationController
  def show
    @user = User.find(params[:id])
    @book = Book.new
    #@books = @user.books
  end

  def index
    @users = User.all
    @book = Book.new
  end

  def edit
    @user = User.find(params[:id])
  end

  def update
    @user = User.find(params[:id])
    @user.update(user_params)
    redirect_to users_show_path(@user.id)
  end

  private

  def user_params
    params.require(:user).permit(:name, :introductoin, :profile_image)
  end
end
