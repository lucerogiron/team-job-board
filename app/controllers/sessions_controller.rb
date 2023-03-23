class SessionsController < ApplicationController
  skip_before_action :require_login, only: [:create, :new]

  def new
    render template: "sessions/new"
  end

  def create
    session_params = params.permit(:email, :password)
    user = User.find_by(email: session_params[:email])
    if user && user.authenticate(params[:password])
      jwt = JWT.encode(
        {
          user_id: user.id, # the data to encode
          exp: 24.hours.from_now.to_i, # the expiration time
        },
        Rails.application.secrets.fetch(:secret_key_base), # the secret key
        "HS256" # the encryption algorithm
      )
      redirect_to user
    else
      # render json: {}, status: :unauthorized
      flash[:notice] = "Login is invalid!"
      redirect_to new_session_path
    end
  end

  def show
  end

  def destroy
    session[:user_id] = nil
    flash[:notice] = "You have been signed out!"
    redirect_to new_session_path
  end
end
