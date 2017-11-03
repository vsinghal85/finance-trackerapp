class User::RegistrationsController < Devise::RegistrationsController
  before_filter :configure_permitted_parameters
 #before_action :configure_permitted_parameters, if: :devise_controller?
  protected

  def configure_permitted_parameters
  	devise_parameter_sanitizer.permit(:sign_up, keys: [:firstname,:lastname])
  	devise_parameter_sanitizer.permit(:account_update, keys: [:firstname,:lastname])
    #devise_parameter_sanitizer.for(:sign_up).push(:first_name,:last_name)
    #devise_parameter_sanitizer.for(:account_update).push(:first_name,:last_name)
  end

end
