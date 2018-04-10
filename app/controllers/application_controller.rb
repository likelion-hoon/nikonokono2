class ApplicationController < ActionController::Base
  #include ActionController::MimeResponds
  #before_filter :configure_permitted_parameters, if: :devise_controller?

  protected
  def configure_permitted_parameters
    devise_parameter_sanitizer.for(:sign_up) << :avatar
    devise_parameter_sanitizer.for(:accout_update) << :avatar
  end
end
