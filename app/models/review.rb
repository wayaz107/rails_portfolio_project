class Review < ApplicationRecord
    belongs_to :user
    belongs_to :restaurant

    validates :restaurant, presence: true
    validates :rating, presence: true
    validates :content, presence: true
    validates_uniqueness_of :restaurant_id, :scope => :user_id
end
