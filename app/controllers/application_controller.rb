class ApplicationController < ActionController::Base
  before_action :require_login
  helper_method :current_user

  def require_login
    redirect_to new_session_path unless session.include? :user_id
  end

  # def current_user
  #   @current_user ||= User.find(session[:user_id]) if session[:user_id]
  #   protect_against_forgery with: :exception, unless: -> { request.format.json? }

  def current_user
    auth_headers = request.headers["Authorization"]
    if auth_headers.present? && auth_headers[/(?<=\A(Bearer ))\S+\z/]
      token = auth_headers[/(?<=\A(Bearer ))\S+\z/]
      begin
        decoded_token = JWT.decode(
          token,
          Rails.application.credentials.fetch(:secret_key_base),
          true,
          { algorithm: "HS256" }
        )
        User.find_by(id: decoded_token[0]["user_id"])
      rescue JWT::ExpiredSignature
        nil
      end
    end
  end

  def authenticate_user
    unless current_user
      render json: {}, status: :unauthorized
    end
  end
end
