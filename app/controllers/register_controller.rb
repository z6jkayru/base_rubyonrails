class RegisterController < ApplicationController
  def index
  end

  def signUp
    puts "-------singIn---"
    puts params[:email]
    puts params[:password]
  end
end
