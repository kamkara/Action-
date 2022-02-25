class ApplicationController < ActionController::Base
    
    #Devise strong params
    protect_from_forgery with: :exception
    before_action :configure_permitted_parameters, if: :devise_controller?
    
    
    protected
    # If you have extra params to permit, append them to the sanitizer.
    def configure_permitted_parameters
        sign_up_params = [ :first_name, :last_name, :full_name,
                            :user_status, :country, :country_code,
                            :contact, :email, :newletter, :terms,
                            :password, :slug, :gender, :membership_category]
          
                
        devise_parameter_sanitizer.permit :sign_up, keys: sign_up_params
        devise_parameter_sanitizer.permit :account_update, keys: sign_up_params
        devise_parameter_sanitizer.permit :sign_in, keys: [:email, :password]
    end

      def after_sign_in_path_for(resource)
        dashboard_path
      end

      def after_sign_up_path_for(resource)
        dashboard_path
      end

end
