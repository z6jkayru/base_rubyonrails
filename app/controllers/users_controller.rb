class UsersController < ApplicationController
  def new
    @user = User.new
    @user.email = "jhon.doe@gmail.com"
  end

  def edit
    @user = User.find(params[:id])
  end

  def create
    @user = User.create(email: params[:user][:email])

    puts "\n\n\n #{@user.id} \n\n\n"

    render json: @user
  end

  def show
    @user = User.find(params[:id])
  end

  def update
    @user = User.find(params[:id])
    @user.update(email: params[:user][:email])

    puts "\n\n\n #{@user.email} \n\n\n"

    render json: @user
  end
end
