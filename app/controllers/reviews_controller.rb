class ReviewsController < ApplicationController

    def index
      find_user
      @reviews = @user.reviews.all
    end
  
    def show
      find_user
      set_restaurant
      set_review
    end
  
    def new
      set_user
      find_restaurant
      @review = Review.new
    end
  
    def create
      set_user
      find_restaurant
      @review = Review.new(review_params)
      if @review.save
        redirect_to user_reviews_path(@user)
      else
        render :new
      end
    end
  
    def edit
      set_user
      set_review
      set_restaurant
    end
  
    def destroy
      set_user
      set_review
      @review.destroy
      redirect_to user_reviews_path(@user)
    end
  
    private
  
    def review_params
      params.require(:review).permit(:user_id, :restaurant_id, :rating, :content)
    end
  
  end