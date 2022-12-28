class RegistrationsController < Devise::RegistrationsController
  def after_sign_up_path_for(_resource)
    confirm_path
  end

  def after_inactive_sign_up_path_for(_resource)
    confirm_path
  end

  def after_sign_in_path_for(_resource)
    categories_path
  end

  private

  def sign_up_params
    params.require(:user).permit(:name, :email, :password, :password_confirmation)
  end

  def account_update_params
    params.require(:user).permit(:name, :email, :password, :password_confirmation, :current_password)
  end
end
