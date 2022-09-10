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
    puts "Estas entrando a mostrar..."
    @user = User.find(params[:id])
  end

  def update
    @user = User.find(params[:id])
    @user.update(email: params[:user][:email])

    puts "\n\n\n #{@user.email} \n\n\n"

    redirect_to @user
  end

  def destroy
    puts "Estas entrando a eliminar..."

    @user = User.find(params[:id])
    @user.destroy

    puts "\n\n\n #{@user} \n\n\n"

    redirect_to root_path
  end
end
