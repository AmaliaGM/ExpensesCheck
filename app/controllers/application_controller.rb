class ApplicationController < ActionController::Base
  before_action :authenticate_user!, except: %i[welcome about splash]
  before_action :configure_permitted_parameters, if: :devise_controller?

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:username])
    devise_parameter_sanitizer.permit(:account_update, keys: [:username])
  end

  def current_user
    @current_user ||= User.find_by(id: session[:user_id]) if session[:user_id].present?
  end
  helper_method :current_user

  def require_authentication
    if current_user
      true
    else
      redirect_to new_session_path
    end
  end
end
