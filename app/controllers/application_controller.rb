class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  ActiveSupport::Deprecation.silenced = true
  protect_from_forgery with: :exception
  helper_method :current_user


  def current_user
    session[:name]
  end


  def require_login
    redirect_to sessions_new_path unless session.include? :name
  end


end
