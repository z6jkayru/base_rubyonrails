class LoginController < ApplicationController
  def index
  end

  def signIn
    puts "-------singIn---"
    puts params[:email]
    puts params[:password]
  end
end
