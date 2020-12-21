class UsersController < ApplicationController
    
  def new
    @user = User.new
  end 

  def index
    @users = User.order('name ASC')
  end 
   
   def show
     @user = User.find(params[:id])
   end 

   def create
     @user = User.new(user_params)
     if @user.save
        session[:user_id] = @user.id
        redirect_to user_reviews_path(@user), :flash => { :success => "Welcome, #{@user.name}! Your account was successfully created."}
     else
        render :new
      end
    end
       
    private
      def user_params
        params.require(:user).permit(:email, :username, :name, :password)
      end
      
end
