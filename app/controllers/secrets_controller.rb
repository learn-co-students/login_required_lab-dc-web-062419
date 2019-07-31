class SecretsController < ApplicationController
    before_action :require_logged_in

    def show
        # @secret = Secret.find(params[:id])
        # byebug
        # unless current_user
        #     # redirect_to '/sessions/new'
        #     redirect_to 'application#hello'
        # end
    end



    

end
