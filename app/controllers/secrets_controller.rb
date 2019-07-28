class SecretsController < ApplicationController
    before_action :require_login, only: :show

    def show
        if !session[:name]
            redirect_to login_path
        else 
            render :show
        end
    end

end