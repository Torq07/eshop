class ApplicationController < ActionController::Base

  def after_sign_in_path_for(resource)
	  orders_path
	end

	def after_sign_out_path_for(resource)
	  orders_path
  end

  rescue_from CanCan::AccessDenied do |exception|
    redirect_to '/orders', :alert => exception.message
  end

  # protect_from_forgery with: :exception
 
  before_action :authenticate_user!

  
end
