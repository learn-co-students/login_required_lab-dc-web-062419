class SessionsController < ApplicationController

    def new
    end

    def create
        #byebug
        if params[:name].nil? || params[:name] == ""
            redirect_to login_path
        else
             session[:name] =  params.require(:name)
             redirect_to '/'
        end
    end

    def destroy
        session.delete :name
        redirect_to login_path
    end
    private

    
  
end