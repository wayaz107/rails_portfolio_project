class CuisinesController < ApplicationController
   
  def index
    @cuisines = Cuisine.order('name ASC')
  end 
  
  
  def show
    @cuisine = Cuisine.find(params[:id]) 
  end

end
