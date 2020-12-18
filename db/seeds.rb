# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

user1 = User.create(name: "Hamza", username: "Hamza1", email: "hamza1@gmail.com", password: "1234") 
# cuisine1 = Cuisine.create(name: "Chinese") 
# city1 = City.create(name: "Milwaukee")
#  restaurant1 = Restaurant.create(name: "P.F. Chang's", price_range: "$$", address: "2500 N Mayfair Rd, Milwaukee, WI 53226", city_id: city1.id, cuisine_id: cuisine1.id)
#  review1 = Review.create(rating: "4", content: "100% recommend!", restaurant_id: restaurant1.id, user_id: user1.id) 

cities = City.create([{name: 'Los Angeles'}, {name: 'New York City'}, {name: 'Barcelona'}, {name: 'Paris'}, {name: 'Tokyo'}, {name: 'Hong Kong'}, {name: 'Mexico City'}])
cuisines = Cuisine.create([{name: 'Japanese'}, {name: 'Chinese'}, {name: 'Korean'}, {name: 'Italian'}, {name: 'French'}, {name: 'New American'}, {name: 'Mexican'}, {name: 'Fast Food'}, {name: 'Tapas'}, {name: 'Cantonese'}])

restaurants = Restaurant.create([
    {name: 'Cal Mare', price_range: '$$$', city_id: City.find_by(name: 'Los Angeles').id , cuisine_id: Cuisine.find_by(name: 'Italian').id},
    {name: 'In-N-Out', price_range: '$', city_id: City.find_by(name: 'Los Angeles').id , cuisine_id: Cuisine.find_by(name: 'Fast Food').id},
    {name: 'Guisados', price_range: '$', city_id: City.find_by(name: 'Los Angeles').id , cuisine_id: Cuisine.find_by(name: 'Mexican').id},
    {name: 'Inko Nito', price_range: '$$', city_id: City.find_by(name: 'Los Angeles').id , cuisine_id: Cuisine.find_by(name: 'Japanese').id},
    {name: 'Katz\'s Delicatessen', price_range: '$$', city_id: City.find_by(name: 'New York City').id , cuisine_id: Cuisine.find_by(name: 'Fast Food').id}])