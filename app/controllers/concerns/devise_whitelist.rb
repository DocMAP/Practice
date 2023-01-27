module DeviseWhitelist
	extend ActiveSupport::Concern
	
	before_action :configure_permitted_parameters, if: :devise_controller?

	def configure_permitted_parameters
		devise_parameter_sanitizer.permit(:sign_up, keys: [:name]) 
		defdevise_parameter_sanitizer.permit(:account_update, keys: [:name])
	end
end