class ApplicationController < ActionController::Base
    
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

    def set_user
        @user = current_user
    end

    def find_user
        @user = User.find_by(id: params[:user_id])
    end

    def set_restaurant
        @restaurant = Restaurant.find(params[:id]) 
    end

    def find_restaurant
        @restaurant = Restaurant.find_by(id: params[:restaurant_id])
    end

    def set_review
        @review = Review.find(params[:id])
    end

end 








     
 
