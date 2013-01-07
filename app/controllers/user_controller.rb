class UserController < ApplicationController
  def index
  end

  def new
    @user = User.new
  end

  def create 
    @user = User.new(params[:user])
    if @user.save
      session[:user_id] = @user.user_id
      redirect_to user_steps_path
    else 
      render :new
    end
  end
end
