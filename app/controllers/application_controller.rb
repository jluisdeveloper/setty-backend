class ApplicationController < ActionController::API
  before_action :configure_permitted_parameters, if: :devise_controller?
  # protect_from_forgery with: :exception

  protected
    def configure_permitted_parameters
      attrs_user = [:dni, :first_name, :last_name, :avatar]
      devise_parameter_sanitizer.permit :sign_up, keys: attrs_user
      devise_parameter_sanitizer.permit :account_update, keys: attrs_user
    end
end
