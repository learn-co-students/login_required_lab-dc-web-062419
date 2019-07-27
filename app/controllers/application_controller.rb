class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  helper_method :name

  def current_user
    username.empty? ? nil : username
  end

  def username
    session[:name] ||= []
  end
end
