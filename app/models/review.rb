class Review < ApplicationRecord
    belongs_to :user
    belongs_to :restaurant

    
    validates :rating, presence: true
    validates :restaurant, presence: true
    validates :content, presence: true
    validates_uniqueness_of :restaurant_id, :scope => :user_id, message: "has already been reviewed."
end
