module RestaurantsHelper
   
    def restaurant_errors(restaurant, error_messages)
      error_messages << restaurant.errors.full_messages if restaurant.errors.any?
      error_messages << restaurant.cuisine.errors.full_messages if restaurant.cuisine.errors.any?
      error_messages << restaurant.city.errors.full_messages if restaurant.city.errors.any?
    end
  
  end
