class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  before_action :configure_permitted_parameters, if: :devise_controller?

  protected

  def configure_permitted_parameters
    devise_parameter_sanitizer.for(:sign_up) { |u| u.permit(:first_name, :last_name, :email, :password) }
    devise_parameter_sanitizer.for(:account_update) { |u| u.permit(:first_name, :last_name, :email, :password, :password_confirmation, :current_password) }

    # Rails 4 solution:
    # devise_parameter_sanitizer.permit(:sign_up, keys: [:first_name, :last_name])
    # devise_parameter_sanitizer.permit(:account_update, keys: [:first_name, :last_name])
  end
  
  def after_sign_in_path_for(resource)
    weddings_path
  end
end
