class ApplicationController < ActionController::Base
  include CanCan::ControllerAdditions
  before_action :configure_permitted_parameters, if: :devise_controller?
  before_action :authenticate_user!

  protect_from_forgery with: :exception

  protected

  def configure_permitted_parameters
    devise_parameter_sanitizer.for(:sign_up) << :name
    devise_parameter_sanitizer.for(:account_update) << :name
    devise_parameter_sanitizer.for(:sign_up) << :role
    devise_parameter_sanitizer.for(:account_update) << :role
  end
end
