class UsersController < ApplicationController
  def show
    @user = user.find(params[:id])
  end

  def edit
  end
end
