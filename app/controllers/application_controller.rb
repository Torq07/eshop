class ApplicationController < ActionController::Base

  rescue_from CanCan::AccessDenied do |exception|
    redirect_to '/orders', :alert => exception.message
  end

  def after_sign_in_path_for(resource)
	   orders_path
	end

  # protect_from_forgery with: :exception
 
  before_action :authenticate_user!

  
end
