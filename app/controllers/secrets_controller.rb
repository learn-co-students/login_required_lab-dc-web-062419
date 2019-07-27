class SecretsController < ApplicationController
  before_action :require_login
  skip_before_action :require_login, only: [:show]

  def show
    if current_user
      @current_user = current_user
      render 'hello'
    else
      redirect_to '/login'
    end
  end

  def reveal
    render 'secret'
  end

  private

  def require_login
    return head(:forbidden) unless session.include? :name
  end
end
