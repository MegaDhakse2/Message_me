class ApplicationController < ActionController::Base
  helper_method :current_user, :logged_in?

  def current_user
    current_user ||= User.find(session[:user_id]) if session[:user_id]
  end

  def logged_in?
    !!current_user #boolean
  end

  def user_security
    if !logged_in?
      flash[:error] = "you must logged in to perform certain actions..."
      redirect_to login_path
    end
  end
end
