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
    @current_user ||= User.find_by(id: session[:user_id]) if session[:user_id]
  end

  helper_method :current_user

  def authenticate_user
    redirect_to "/login", status: :see_other unless current_user
  end
end
