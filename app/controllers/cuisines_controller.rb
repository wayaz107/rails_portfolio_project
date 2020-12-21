class CuisinesController < ApplicationController
  before_action :require_login
  

  def index
    @cuisines = Cuisine.order('name ASC')
  end 
  
  
  def show
    @cuisine = Cuisine.find(params[:id]) 
  end

end
