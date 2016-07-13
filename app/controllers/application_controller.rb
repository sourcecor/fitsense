class ApplicationController < ActionController::Base
  include ApplicationHelper
  after_filter :prepare_unobtrusive_flash
  before_action :configure_permitted_parameters, if: :devise_controller?
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  protected

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:nickname])
    devise_parameter_sanitizer.permit(:account_update, keys: [:nickname])
    devise_parameter_sanitizer.permit(:account_update) { |u|
      u.permit(:password, :password_confirmation, :current_password)
    }
  end

  def after_sign_out_path_for(resource_or_scope)
    # If it's admin
    if is_admin?
      admin_root_path
      # Otherwise
    else
      root_path
    end
  end
end
