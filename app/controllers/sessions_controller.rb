class SessionsController < ApplicationController
  skip_before_action :require_login, only: [:create, :new]

  def new
    render template: "sessions/new"
  end

  def create
    user = User.find_by(email: params[:email])
    if user && user.authenticate(params[:password])
      session[:user_id] = user.id
      redirect_to "/"
    else
      redirect_to "/login"
    end
  end

  def destroy
    session[:user_id] = nil
    redirect_to "/login"
  end
end
