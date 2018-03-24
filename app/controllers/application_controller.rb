class ApplicationController < ActionController::Base
  include ActionController::MimeResponds

  before_action :configure_permitted_parameters, if: :devise_controller?

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:nickname, :description, :email, :password])
    devise_parameter_sanitizer.permit(:account_update, keys: [:nickname, :description, :email, :password, :current_password])
  end
end
