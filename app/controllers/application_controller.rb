class ApplicationController < ActionController::Base
    include ApplicationHelper
    before_action :redirect_if_not_logged_in 
    helper_method :current_user, :logged_in?, :authorized_to_edit?

    def logged_in?
        !!current_user
    end

    def current_user
        @current_user || User.find_by(id: session[:user_id]) if session[:user_id]
    end

    def authorized_to_edit?(restaurant)
        restaurant.user == current_user
      end  
    
      def redirect_if_not_logged_in
        if !logged_in?
            flash[:error] = "You must be logged in to view this page."
            redirect_to login_path
      end

end
