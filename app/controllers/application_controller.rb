class ApplicationController < ActionController::Base
  before_action :configger_permitted_parameters, if: :devise_controller?

  private
  def configger_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:name, :profile, :occupation, :position])
    
  end
end
