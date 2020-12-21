class Restaurant < ApplicationRecord
    has_many :reviews
    has_many :users, through: :reviews
    belongs_to :city
    belongs_to :cuisine
    validates :name, presence: true, uniqueness: true

    scope :highest_rated, -> {joins(:reviews).merge(Review.group(:restaurant_id).order('AVG(rating) DESC').limit(5))}
    
    scope :popular, -> {joins(:reviews).merge(Review.group(:restaurant_id).order('COUNT(reviews.restaurant_id) DESC').limit(5))}


    def average_rating
        if self.reviews.count == 0
          "No reviews"
        else
          self.reviews.average(:rating).to_f.round(2)
        end
    end
    	
end 
  
   
  
   
 

