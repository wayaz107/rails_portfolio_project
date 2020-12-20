class ReviewsController < ApplicationController

    def index
        @user = User.find_by(id: params[:user_id])
        @reviews = @user.reviews.all
    end	  

    def new
        @user = current_user
        @restaurant = Restaurant.find_by(id: params[:restaurant_id])
        @review = Review.new
    end 

    def show
        @user = User.find_by(id: params[:user_id])
        @review = Review.find(params[:id])
        @restaurant = Restaurant.find(params[:id])
      end	  

    def edit
        @user = current_user
        @review = Review.find(params[:id])
        @restaurant = Restaurant.find(params[:id])
    end 

    def review_params
        params.require(:review).permit(:user_id, :restaurant_id, :rating, :content)
      end

end