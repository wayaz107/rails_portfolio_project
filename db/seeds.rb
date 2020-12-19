# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

 User.create(name: "Hamza", username: "Hamza1", email: "hamza1@gmail.com", password: "password") 
 User.create(name: "Warda", username: "wayaz01", email: "wayaz01@gmail.com", password: "password") 
 User.create(name: "Anum", username: "Anum1", email: "anum@gmail.com", password: "password") 


 Cuisine.create(name: "Chinese")  #1
 Cuisine.create(name: "Indian") #2
 Cuisine.create(name: "Italian") #3
 Cuisine.create(name: "Middle Eastern")  #4
 Cuisine.create(name: "Mexican") #5
 Cuisine.create(name: "American") #6
 Cuisine.create(name: "Other")

 City.create(name: "Milwaukee")
 City.create(name: "Chicago")
 City.create(name: "San Diego")
 City.create(name: "Orlando")


 Restaurant.create(name: "Anmol", address: "711 W Historic Mitchell St, Milwaukee, WI 53204", price_range: "$$", cuisine_id: 2, city_id: 1)
 Restaurant.create(name: "Ghareeb Nawaz Restaurant", address: "2032 W Devon Ave, Chicago, IL 60659", price_range: "$", cuisine_id: 2, city_id: 2)
 Restaurant.create(name: "Chopstix", address: "1820 N Farwell Ave, Milwaukee, WI 53202", price_range: "$", cuisine_id: 1, city_id: 1)
 Restaurant.create(name: "Bencotto", address: "750 W Fir St #103, San Diego, CA 92101", price_range: "$$$", cuisine_id: 3, city_id: 3)

 Review.create(user_id: 1, restaurant_id: 1, rating: 5, content: "Loved it. Food was delicious")
 Review.create(user_id: 2, restaurant_id: 2, rating: 3, content: "The price was not worth the food.")

 Review.create(user_id: 1, restaurant_id: 2, rating: 4, content: "Food and ambiance was great. Didn't give a complete 5 stars because the food took a while.")