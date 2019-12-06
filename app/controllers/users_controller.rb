class UsersController < ApplicationController
  def new
  end

  def index
  	@users = User.all
  	@book = Book.new
  end

  def show
  	@user = User.find(params[:id])
    @books = @user.books
    @book = Book.new
  end

  def edit
    @user = User.find(params[:id])
    if current_user.id != @user.id
      redirect_to user_path(current_user.id)
    end
  end

  def update
    @user = User.find(params[:id])
    if @user.update(user_params)
    redirect_to user_path(@user.id)
    flash[:notice] = "You have updated user successfully."
  else
    render :edit
  end
end

  private
  def user_params
    params.require(:user).permit(:name, :profile_image, :introduction)
  end

  def check
    user = User.find(params[:id])
    if current_user != user
      redirect_to user_path(current_user)
    end
  end
end