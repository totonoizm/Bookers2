class UsersController < ApplicationController
  def show
    @user = User.find(params[:id])
    @post_books = @user.post_books.page(params[:page]).reverse_order
  end

  def edit
    @user = User.find(params[:id])
  end
end
