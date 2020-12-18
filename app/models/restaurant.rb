class Restaurant < ApplicationRecord
    has_many :reviews
    belongs_to :city
    belongs_to :cuisine
    has_many :users, through: :reviews

   
    validates :name, presence: true
    validates :address, presence: true
    validates :city_name, presence: true
    validates :cuisine_name, presence: true
   
  def cuisine_name=(name)
    self.cuisine = Cuisine.find_or_create_by(name: name)
  end

  def cuisine_name
    self.cuisine.name if self.cuisine
  end

  def city_name=(name)
    self.city = City.find_or_create_by(name: name)
  end

  def city_name
    self.city.name if self.city
  end
end

   
 

