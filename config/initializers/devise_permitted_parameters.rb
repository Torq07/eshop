module DevisePermittedParameters
  extend ActiveSupport::Concern

  included do
    before_filter :configure_permitted_parameters, if: :devise_controller? 
  end

  protected

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:email,:num_id,:alt_num_id ])
    devise_parameter_sanitizer.permit(:account_update, keys: [:email,:num_id,:alt_num_id ])
  end

end

DeviseController.send :include, DevisePermittedParameters