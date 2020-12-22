class SessionsController < ApplicationController

    def new
    end 

    def create

        if params[:provider] == 'facebook'
            @user = User.create_by_facebook_omniauth(auth)
            session[:user_id] = @user.id
            redirect_to root_path(@user)
        else

        @user = User.find_by(email: params[:user][:email])

        if @user && @user.try(:authenticate, params[:user][:password])
            session[:user_id] = @user.id
            redirect_to root_path
        else
            redirect_to login_path, danger: "Incorrect username/password. Please try again."
          end 
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