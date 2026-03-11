class UsersController < ApplicationController
  def new
  end

  def create
    @user = User.new
    @user["username"] = params["username"]
    @user["email"] = params["email"]
    # Use the .password method provided by has_secure_password
    @user.password = params["password"] 
    @user.save
    redirect_to "/login"
  end
end
