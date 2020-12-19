class ReviewsController < ApplicationController

    def index
        @user = User.find_by(id: params[:user_id])
        @reviews = @user.reviews.all
    end	  

    def new
    end 

    def show
    end 

    def edit
    end 


end