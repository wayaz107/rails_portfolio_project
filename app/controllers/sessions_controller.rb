class SessionsController < ApplicationController

    def new
    end 

    def create
        @user = User.find_by(email: params[:user][:email])
        if params[:user][:email] == "" || params[:user][:password] == ""
            redirect_to login_path, danger: "Please enter all fields."
        elsif @user && @user.try(:authenticate, params[:user][:password])
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

end 