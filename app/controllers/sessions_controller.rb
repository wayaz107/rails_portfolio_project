class SessionsController < ApplicationController

    def new
    end 

    def create
        @user = User.find_by(email: params[:user][:email])
         if params[:user][:email].empty? || params[:user][:password].empty?
            redirect_to login_path, danger: "Please complete all fields."
         elsif @user && @user.authenticate(params[:user][:password])
           session[:user_id] = @user.id
           redirect_to root_path
         else
           redirect_to login_path, danger: "Incorrect username/password. Please try again."
        end  
    end 

    def destroy
        session.destroy
        redirect_to root_path, success: "Log out successful!"
    end 

    def facebookcreate
        @user = User.create_by_facebook_omniauth(auth)
        session[:user_id] = @user.id
        redirect_to root_path
    end 

    private

    def auth
      request.env['omniauth.auth']
    end

end 