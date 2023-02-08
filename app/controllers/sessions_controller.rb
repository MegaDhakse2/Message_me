class SessionsController < ApplicationController
  before_action :user_security, only: [:destroy]
  before_action :logged_in_redirect, only: %i[new create]
  def new
  end

  def create
    user = User.find_by(username: params[:session][:username])
    if user && user.authenticate(params[:session][:password])
      session[:user_id] = user.id
      flash[:success] = "LOgged in successfully"
      redirect_to root_path
    else
      flash[:error] = "Please check the Login credentials correctly"
      render :new, status: :unprocessable_entity
    end
  end

  def destroy
    session[:user_id] = nil
    flash[:info] = "You have been logged out"
    redirect_to login_path
  end

  private

  def logged_in_redirect
    if logged_in?
      flash[:error] = "you are already logged in"
      redirect_to root_path
    end
  end
end
