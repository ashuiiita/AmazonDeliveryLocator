# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db=>seed command (or created alongside the database with db=>setup).
#
# Examples=>
#
#   movies = Movie.create([{ name=> 'Star Wars' }, { name=> 'Lord of the Rings' }])
#   Character.create(name=> 'Luke', movie=> movies.first)
UsersArray = [{"name" => "harshit", "password" => "harshit"}, {"name" => "salman", "password" => "salman"}, {"name" => "rahul", "password" => "rahul"}, 
	{"name" => "harsh", "password" => "harsh"}, {"name" => "rakshit", "password" => "rakshit"}]

for x in UsersArray do 
	user = User.new
	user.name = x["name"]
	user.password = x["password"]
	user.save
end

deliveryCentreArray = [{"name" => "Amazon delivery center 1", "description" => "gachibowli", "address" => "601 West Street_601 West 5th Avenue_Anchorage, Alaska 99501_907-277-2477", "latitude" => 17.418590, "longitude" => 78.401203},
					   {"name" => "Amazon delivery center 2", "description" => "gachibowli", "address" => "601 West Street_601 West 5th Avenue_Anchorage, Alaska 99501_907-277-2477", "latitude" => 17.438722, "longitude" => 78.411203},
					   {"name" => "Amazon delivery center 3", "description" => "gachibowli", "address" => "601 West Street_601 West 5th Avenue_Anchorage, Alaska 99501_907-277-2477", "latitude" => 17.446357, "longitude" => 78.401113},
					   {"name" => "Amazon delivery center 4", "description" => "gachibowli", "address" => "601 West Street_601 West 5th Avenue_Anchorage, Alaska 99501_907-277-2477", "latitude" => 17.456277, "longitude" => 78.401947},
					   {"name" => "Amazon delivery center 5", "description" => "gachibowli", "address" => "601 West Street_601 West 5th Avenue_Anchorage, Alaska 99501_907-277-2477", "latitude" => 17.409387, "longitude" => 78.411243},
					   {"name" => "Amazon delivery center 6", "description" => "gachibowli", "address" => "601 West Street_601 West 5th Avenue_Anchorage, Alaska 99501_907-277-2477", "latitude" => 17.419999, "longitude" => 78.444203},
					   {"name" => "Amazon delivery center 7", "description" => "gachibowli", "address" => "601 West Street_601 West 5th Avenue_Anchorage, Alaska 99501_907-277-2477", "latitude" => 17.428722, "longitude" => 78.478347},
					   {"name" => "Amazon delivery center 8", "description" => "gachibowli", "address" => "601 West Street_601 West 5th Avenue_Anchorage, Alaska 99501_907-277-2477", "latitude" => 17.489383, "longitude" => 78.444203},
					   {"name" => "Amazon delivery center 9", "description" => "gachibowli", "address" => "601 West Street_601 West 5th Avenue_Anchorage, Alaska 99501_907-277-2477", "latitude" => 17.468722, "longitude" => 78.410000},
					   {"name" => "Amazon delivery center 10", "description" => "gachibowli", "address" => "601 West Street_601 West 5th Avenue_Anchorage, Alaska 99501_907-277-2477", "latitude" => 17.458722, "longitude" => 78.406353}
					  ]

for x in deliveryCentreArray do
	center = DeliveryCentre.new
	center.name = x["name"]
	center.description = x["description"]
	center.address = x["address"]
	center.latitude = x["latitude"]
	center.longitude = x["longitude"]
	center.save
end

OrdersArray = [{"name" => "shoes", "description" => "placeholder text", "user_id" => "1", "delivery_centre_id" => "1", "deliveryDate" => Time.now},
				{"name" => "tie", "description" => "placeholder text", "user_id" => "1", "delivery_centre_id" => "2", "deliveryDate" => (Time.now + 10*60*60)},
				{"name" => "book", "description" => "placeholder text", "user_id" => "2", "delivery_centre_id" => "2", "deliveryDate" => (Time.now + 9*60*60)},
				{"name" => "laptop", "description" => "placeholder text", "user_id" => "2", "delivery_centre_id" => "3", "deliveryDate" => (Time.now + 8*60*60)},
				{"name" => "mobile", "description" => "placeholder text", "user_id" => "3", "delivery_centre_id" => "3", "deliveryDate" => (Time.now + 7*60*60)},
				{"name" => "belt", "description" => "placeholder text", "user_id" => "3", "delivery_centre_id" => "4", "deliveryDate" => (Time.now + 6*60*60)},
				{"name" => "hairgel", "description" => "placeholder text", "user_id" => "4", "delivery_centre_id" => "5", "deliveryDate" => (Time.now + 5*60*60)},
				{"name" => "deodorant", "description" => "placeholder text", "user_id" => "4", "delivery_centre_id" => "6", "deliveryDate" => (Time.now + 4*60*60)},
				{"name" => "polish", "description" => "placeholder text", "user_id" => "5", "delivery_centre_id" => "5", "deliveryDate" => (Time.now + 3*60*60)},
				{"name" => "biscuit", "description" => "placeholder text", "user_id" => "5", "delivery_centre_id" => "6", "deliveryDate" => (Time.now + 2*60*60)},
				{"name" => "chocoalte", "description" => "placeholder text", "user_id" => "1", "delivery_centre_id" => "1", "deliveryDate" => (Time.now + 1*60*60)},
				{"name" => "icecream", "description" => "placeholder text", "user_id" => "2", "delivery_centre_id" => "7", "deliveryDate" => (Time.now + 11*60*60)},
				{"name" => "toffee", "description" => "placeholder text", "user_id" => "3", "delivery_centre_id" => "7", "deliveryDate" => (Time.now + 12*60*60)},
				{"name" => "hairoil", "description" => "placeholder text", "user_id" => "4", "delivery_centre_id" => "8", "deliveryDate" => (Time.now + 13*60*60)},
				{"name" => "facewash", "description" => "placeholder text", "user_id" => "4", "delivery_centre_id" => "8", "deliveryDate" => (Time.now + 14*60*60)},
				{"name" => "socks", "description" => "placeholder text", "user_id" => "3", "delivery_centre_id" => "8", "deliveryDate" => (Time.now + 15*60*60)},
				{"name" => "comb", "description" => "placeholder text", "user_id" => "3", "delivery_centre_id" => "9", "deliveryDate" => (Time.now + 16*60*60)},
				{"name" => "handwash", "description" => "placeholder text", "user_id" => "5", "delivery_centre_id" => "9", "deliveryDate" => (Time.now + 17*60*60)},
				{"name" => "soap", "description" => "placeholder text", "user_id" => "5", "delivery_centre_id" => "10", "deliveryDate" => (Time.now + 18*60*60)},
				{"name" => "noodles", "description" => "placeholder text", "user_id" => "4", "delivery_centre_id" => "10", "deliveryDate" => (Time.now + 19*60*60)},
				{"name" => "oven", "description" => "placeholder text", "user_id" => "2", "delivery_centre_id" => "1", "deliveryDate" => (Time.now + 20*60*60)},
				{"name" => "fridge", "description" => "placeholder text", "user_id" => "4", "delivery_centre_id" => "2", "deliveryDate" => (Time.now + 21*60*60)},
				{"name" => "stove", "description" => "placeholder text", "user_id" => "3", "delivery_centre_id" => "2", "deliveryDate" => (Time.now + 22*60*60)},
				{"name" => "doormat", "description" => "placeholder text", "user_id" => "2", "delivery_centre_id" => "3", "deliveryDate" => (Time.now + 23*60*60)},
				{"name" => "mouse", "description" => "placeholder text", "user_id" => "1", "delivery_centre_id" => "4", "deliveryDate" => (Time.now + 24*60*60)},
				{"name" => "keyboard", "description" => "placeholder text", "user_id" => "4", "delivery_centre_id" => "1", "deliveryDate" => (Time.now + 25*60*60)}
				]

for x in OrdersArray do
	order = Order.new
	order.name = x["name"]
	order.description = x["description"]
	order.user_id = x["user_id"].to_i
	order.delivery_centre_id = x["delivery_centre_id"]
	order.deliveryDate = x["deliveryDate"]
	order.save
end



