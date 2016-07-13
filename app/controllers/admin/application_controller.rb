class Admin::ApplicationController < ApplicationController
  layout 'admin/layouts/application'
  after_filter :prepare_unobtrusive_flash
  before_action :configure_permitted_parameters, if: :devise_controller?
  before_action :authenticate_admin_supervisor! # all operation must after login
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  protected

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:nickname])
    devise_parameter_sanitizer.permit(:account_update, keys: [:nickname])
  end

end
