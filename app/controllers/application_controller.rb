class ApplicationController < ActionController::Base
  include CanCan::ControllerAdditions
  force_ssl if: :ssl_configured?

  
  before_action :configure_permitted_parameters, if: :devise_controller?
  

  protect_from_forgery with: :exception

  protected
  def ssl_configured?
    !Rails.env.development?
  end
  def configure_permitted_parameters
    devise_parameter_sanitizer.for(:sign_up) << :name
    devise_parameter_sanitizer.for(:account_update) << :name
    devise_parameter_sanitizer.for(:sign_up) << :role
    devise_parameter_sanitizer.for(:account_update) << :role
  end
end
