class SessionsController < ApplicationController
  def new
  end

  def create
    session[:name] = params[:name]
    if !current_user.blank?
      render :welcome 
    else
    redirect_to sessions_new_path
    end
  end

  # def login
  # end

  def destroy
    session.delete :name
    redirect_to sessions_login_path
  end
end
