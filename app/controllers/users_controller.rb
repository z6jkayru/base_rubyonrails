class UsersController < ApplicationController
  def new
    @user = User.new
    @user.email = "jhon.doe@gmail.com"
  end

  def create
    @user = User.create(email: params[:user][:email])
    render json: @user
  end
end
