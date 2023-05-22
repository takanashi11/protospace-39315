class ApplicationController < ActionController::Base
    before_action :configure_permitted_parameters, if: :devise_controller?
    before_action :set_current_user

    def set_current_user
      @current_user = current_user
    end
  
    private
    def configure_permitted_parameters
      devise_parameter_sanitizer.permit(:sign_up, keys: [:email, :name, :password, :profile, :occupation, :position])
    end 
end
