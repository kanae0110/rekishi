class UserController < ApplicationController
    before_action :check_auth
    
    
    def check_auth
        redirect_to login_path if session[:user_id].blank?
    end
end
