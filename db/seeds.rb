# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
#Users
 User.create!(name: "Hamza", username: "Hamza1", email: "hamza1@gmail.com", password: "password") 
 User.create!(name: "Warda", username: "wayaz107", email: "wayaz107@gmail.com", password: "cookies") 
 User.create!(name: "Anum", username: "Anum1", email: "anum@gmail.com", password: "password") 
 User.create!(name: "Asma", username: "asma01", email: "asma01@gmail.com", password: "cookies") 
 #cuisines
 Cuisine.create!(name: "Chinese")  #1
 Cuisine.create!(name: "Indian") #2
 Cuisine.create!(name: "Italian") #3
 Cuisine.create!(name: "Middle Eastern")  #4
 Cuisine.create!(name: "Mexican") #5
 Cuisine.create!(name: "American") #6
 Cuisine.create!(name: "French") #7
 Cuisine.create!(name: "Greek") #8
 Cuisine.create!(name: "Thai")  #9
 Cuisine.create!(name: "Other")
 #Cities
 City.create!(name: "Milwaukee")
 City.create!(name: "Chicago")
 City.create!(name: "San Diego")
 City.create!(name: "Orlando")
 City.create!(name: "New York")

#Milwaukee(11)
 Restaurant.create!(name: "Anmol", address: "711 W Historic Mitchell St, Milwaukee, WI 53204", price_range: "$$", cuisine_id: 2, city_id: 1) #indian
 Restaurant.create!(name: "Maharaja", address: "1550 N Farwell Ave, Milwaukee, WI 53202", price_range: "$$", cuisine_id: 2, city_id: 1) #indian
 Restaurant.create!(name: "Bollywood Grill", address: "1038 N Jackson St, Milwaukee, WI 53202", price_range: "$$", cuisine_id: 2, city_id: 1) #indian
 Restaurant.create!(name: "Zarletti", address: "741 N Milwaukee St, Milwaukee, WI 53202", price_range: "$$$", cuisine_id: 3, city_id: 1) #italian
 Restaurant.create!(name: "Chopstix", address: "1820 N Farwell Ave, Milwaukee, WI 53202", price_range: "$", cuisine_id: 1, city_id: 1) #chinese
 Restaurant.create!(name: "Pita Palace", address: "789 W Layton Ave, Milwaukee, WI 53221", price_range: "$$", cuisine_id: 4, city_id: 1) #middleE
 Restaurant.create!(name: "El Señorial", address: "1901 S 31st St, Milwaukee, WI 53215", price_range: "$$", cuisine_id: 5, city_id: 1) #mexican
 Restaurant.create!(name: "Oak Barrel Public House", address: "1033 N Old World 3rd St, Milwaukee, WI 53203", price_range: "$$", cuisine_id: 6, city_id: 1) #American
 Restaurant.create!(name: "Bartolotta's Lake Park Bistro", address: "3133 E Newberry Blvd, Milwaukee, WI 53211", price_range: "$$$$", cuisine_id: 7, city_id: 1) #french
 Restaurant.create!(name: "Oakland Gyros", address: "2867 N Oakland Ave, Milwaukee, WI 53211", price_range: "$", cuisine_id: 8, city_id: 1) #greek
 Restaurant.create!(name: "Siam Express", address: "4819 W National Ave, Milwaukee, WI 53214", price_range: "$$", cuisine_id: 9, city_id: 1) #thai,11
#Chicago
 Restaurant.create!(name: "Ghareeb Nawaz Restaurant", address: "2032 W Devon Ave, Chicago, IL 60659", price_range: "$", cuisine_id: 2, city_id: 2) #indian 12
 Restaurant.create!(name: "Sun Wah BBQ", address: "5039 N Broadway, Chicago, IL 60640", price_range: "$", cuisine_id: 1, city_id: 2) #chinese
 Restaurant.create!(name: "Piccolo Sogno", address: "464 N Halsted St, Chicago, IL 60642", price_range: "$$", cuisine_id: 3, city_id: 2) #italian
 Restaurant.create!(name: "Carnitas Uruapan", address: "1725 W 18th St, Chicago, IL 60608", price_range: "$", cuisine_id: 5, city_id: 2) #mexican
 #San Diago
 Restaurant.create!(name: "Tandoori House", address: "3146 Midway Dr, San Diego, CA 92110", price_range: "$", cuisine_id: 2, city_id: 3) #indian
 Restaurant.create!(name: "Mandarin Wok Restaurant", address: "4227 Balboa Ave, San Diego, CA 92117", price_range: "$$", cuisine_id: 1, city_id: 3) #chinese
 Restaurant.create!(name: "Piacere Mio", address: "1947 Fern St, San Diego, CA 92102", price_range: "$$", cuisine_id: 3, city_id: 3) #italian
 Restaurant.create!(name: "Aladdin Mediterranean", address: "5420 Clairemont Mesa Blvd, San Diego, CA 92117", price_range: "$$", cuisine_id: 4, city_id: 3) #middleE
 Restaurant.create!(name: "Miguel's Cocina", address: "2444 San Diego Ave, San Diego, CA 92110", price_range: "$$", cuisine_id: 5, city_id: 3) #mexican
 Restaurant.create!(name: "Great Maple Hillcrest", address: "1451 Washington St, San Diego, CA 92103", price_range: "$$", cuisine_id: 6, city_id: 3) #American
 Restaurant.create!(name: "Au Revoir French Bistro", address: "420 Robinson Ave, San Diego, CA 92103", price_range: "$$", cuisine_id: 7, city_id: 3) #french
 Restaurant.create!(name: "Meze Greek Fusion", address: "345 Sixth Ave, San Diego, CA 92101", price_range: "$", cuisine_id: 8, city_id: 3) #greek
 Restaurant.create!(name: "Bahn Thai", address: "4646 Park Blvd, San Diego, CA 92116", price_range: "$", cuisine_id: 9, city_id: 3) #thai


#Orlando
Restaurant.create!(name: "Bombay Cafe", address: "1137 Doss Ave #1155, Orlando, FL 32809", price_range: "$$", cuisine_id: 2, city_id: 4) #indian
Restaurant.create!(name: "Moghul", address: "401 N Semoran Blvd, Winter Park, FL 32792", price_range: "$$", cuisine_id: 2, city_id: 4) #indian
Restaurant.create!(name: "Aashirwad", address: "7000 S Kirkman Rd, Orlando, FL 32819", price_range: "$$", cuisine_id: 2, city_id: 4) #indian

Restaurant.create!(name: "Fresco Cucina", address: "7721 Turkey Lake Rd, Orlando, FL 32819", price_range: "$$$", cuisine_id: 3, city_id: 4) #italian
Restaurant.create!(name: "Chuan Lu Garden", address: "1101 E Colonial Dr, Orlando, FL 32803", price_range: "$$", cuisine_id: 1, city_id: 4) #chinese
Restaurant.create!(name: "Flame Kabob", address: "7536 Dr Phillips Blvd Ste #350, Orlando, FL 32819", price_range: "$$", cuisine_id: 4, city_id: 4) #middleE

Restaurant.create!(name: "Border Grill Fresh-Mex", address: "5695-A Vineland Rd, Orlando, FL 32819", price_range: "$", cuisine_id: 5, city_id: 4) #mexican
Restaurant.create!(name: "The Stubborn Mule", address: "100 S Eola Dr Unit 103, Orlando, FL 32801", price_range: "$$", cuisine_id: 6, city_id: 4) #American
Restaurant.create!(name: "Chez Filet", address: " 8255 International Dr #144a, Orlando, FL 32819", price_range: "$$$$", cuisine_id: 7, city_id: 4) #french

Restaurant.create!(name: "Taverna Opa", address: "9101 International Dr #2240, Orlando, FL 32819", price_range: "$$", cuisine_id: 8, city_id: 4) #greek

Restaurant.create!(name: "Thai Thani Thai", address: "11025 International Dr, Orlando, FL 32821", price_range: "$$", cuisine_id: 9, city_id: 4) #thai


#New York

Restaurant.create!(name: "Aashirwad", address: "99 Hudson St, New York, NY 10013", price_range: "$$$", cuisine_id: 2, city_id: 5) #indian

Restaurant.create!(name: "FCarmine's", address: "200 W 44th St, New York, NY 10036", price_range: "$$", cuisine_id: 3, city_id: 5) #italian
Restaurant.create!(name: "Café China", address: "13 E 37th St, New York, NY 10016", price_range: "$$", cuisine_id: 1, city_id: 5) #chinese
Restaurant.create!(name: "Kubeh", address: "464 6th Ave, New York, NY 10011", price_range: "$$", cuisine_id: 4, city_id: 5) #middleE

Restaurant.create!(name: "La Contenta", address: "102 Norfolk St, New York, NY 10002", price_range: "$$", cuisine_id: 5, city_id: 5) #mexican
Restaurant.create!(name: "Hard Rock Cafe", address: "1501 Broadway, New York, NY 10036", price_range: "$$", cuisine_id: 6, city_id: 5) #American
Restaurant.create!(name: "Balthazar", address: "80 Spring St, New York, NY 10012", price_range: "$$$", cuisine_id: 7, city_id: 5) #french

Restaurant.create!(name: "Estiatorio Milos", address: "125 W 55th St, New York, NY 10019", price_range: "$$$$", cuisine_id: 8, city_id: 5) #greek

Restaurant.create!(name: "Pongsri Thai", address: "244 W 48th St, New York, NY 10036", price_range: "$$", cuisine_id: 9, city_id: 5) #thai

#reviews

 Review.create!(user_id: 1, restaurant_id: 1, rating: 5, content: "Loved it. Food was delicious")
 Review.create!(user_id: 1, restaurant_id: 3, rating: 3, content: "The price was not worth the food.")

 Review.create!(user_id: 1, restaurant_id: 5, rating: 4, content: "Food and ambiance was great. Didn't give a complete 5 stars because the food took a while.")
 Review.create!(user_id: 1, restaurant_id: 7, rating: 5, content: "One of my favorite restaurants. The food is great and the overall vibe is really cool.")
 Review.create!(user_id: 1, restaurant_id: 9, rating: 3, content: "Customer service was not that good.")

 Review.create!(user_id: 1, restaurant_id: 11, rating: 2, content: "Food was served cold, would not recomment.")
 Review.create!(user_id: 2, restaurant_id: 13, rating: 1, content: "There were bugs inside the restaurant, its not clean.")
 Review.create!(user_id: 2, restaurant_id: 15, rating: 3, content: "Great place but a little overrated in my opinion")

 Review.create!(user_id: 2, restaurant_id: 17, rating: 3, content: "Food was aliright, and price too high.")
 Review.create!(user_id: 2, restaurant_id: 19, rating: 5, content: "The food here was incredible. Price was more than reasonable.")
 Review.create!(user_id: 2, restaurant_id: 21, rating: 2, content: "Service is bad,and tasted less than expected.")

 Review.create!(user_id: 3, restaurant_id: 22, rating: 1, content: "Def would not recommend. Would never come here again.")

 Review.create!(user_id: 3, restaurant_id: 24, rating: 5, content: "The meat was so delicious I could not stop eating.")
 Review.create(user_id: 3, restaurant_id: 26, rating: 3, content: "Was hoping for better.")

 Review.create!(user_id: 3, restaurant_id: 28, rating: 3, content: "Comfortable environment, food wasnt bad. Service was good.")
 Review.create!(user_id: 4, restaurant_id: 31, rating: 5, content: "Food, drinks, and service are great. I always have a blast here")
 Review.create!(user_id: 4, restaurant_id: 32, rating: 2, content: "Really bad service, we waited so long to get our food.")

 Review.create!(user_id: 4, restaurant_id: 18, rating: 4, content: "Great Service!cozy atmosphere. I really liked the appetizers they gave for free. Wish food came out faster.")