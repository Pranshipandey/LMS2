class ApplicationController < ActionController::Base
   
    
    before_action :authenticate_user!, unless: :devise_controller?
   
    def redirect_to_default
      redirect_to root_url
    end
  end
