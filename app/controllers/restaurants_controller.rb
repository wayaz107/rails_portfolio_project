class RestaurantsController < ApplicationController
   
    def index
       @restaurants = Restaurant.order('name ASC')
    end 

    def show
        @restaurant = Restaurant.find(params[:id])
    end 

 
private

    def restaurant_params
        params.require(:restaurant).permit(:name, :price_range, :address, :cuisine_id, :city_id)
    end
end
