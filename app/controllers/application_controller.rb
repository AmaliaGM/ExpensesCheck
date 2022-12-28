class ApplicationController < ActionController::Base
  class ApplicationController < ActionController::Base
    # Prevent CSRF attacks by raising an exception.
    # For APIs, you may want to use :null_session instead.
    protect_from_forgery with: :exception
    before_filter :require_authentication
  
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
end
