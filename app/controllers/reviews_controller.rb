class ReviewsController < ApplicationController

    def index
      find_user
      @reviews = @user.reviews.all
    end
  
  
    def new
      set_user
      find_restaurant
      @review = Review.new
    end
  
    def create
      set_user
      find_restaurant
      @review = @user.reviews.build(review_params)
      if @review.save
        redirect_to user_reviews_path(@user)
      else
        render :new
      end
    end

    def show
      find_user
      set_restaurant
      set_review
    end
  
    def edit
      set_user
      set_review
      set_restaurant
    end

    def update
      set_user
    set_review
    set_restaurant
      if @review.update(review_params)
      redirect_to user_reviews_path(@user)
      else
      render :edit
      end
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