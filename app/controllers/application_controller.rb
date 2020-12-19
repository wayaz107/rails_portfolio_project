class ApplicationController < ActionController::Base
    include ApplicationHelper
    helper_method :current_user, :logged_in?

    def current_user
        @current_user ||= User.find_by(id: session[:user_id]) 
    end

    def logged_in?
        !!current_user
    end 
    
    def require_login
        redirect_to login_path unless logged_in?
    end
     
 
end
