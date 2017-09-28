require "http"
require "json"
module UsersHelper
	
	def self.getLocationData(user_latitude,user_longitude,delivery_center_latitude,delivery_center_longitude)
		locationData = HTTP.get("https://maps.googleapis.com/maps/api/distancematrix/json?origins="+user_latitude.to_s+","+user_longitude.to_s+"&destinations="+delivery_center_latitude.to_s+","+delivery_center_longitude.to_s+"&key=AIzaSyBVKykw5J7k44ve9GIC0mlqWwm0XZjTPWw")
		getDistanceFromLocationData(locationData)
	end

	def self.getDistanceInMeters(user_latitude,user_longitude,delivery_center_latitude,delivery_center_longitude)
		locationData = HTTP.get("https://maps.googleapis.com/maps/api/distancematrix/json?origins="+user_latitude.to_s+","+user_longitude.to_s+"&destinations="+delivery_center_latitude.to_s+","+delivery_center_longitude.to_s+"&key=AIzaSyBVKykw5J7k44ve9GIC0mlqWwm0XZjTPWw")
		parseData = JSON.parse locationData.to_s
		if parseData["rows"].first["elements"].first["status"] == "OK"
			parseData["rows"].first["elements"].first["distance"]["value"]
		else
			nil
		end
	end

	def self.getDistanceFromLocationData(locationData)
		parseData = JSON.parse locationData.to_s
		if parseData["rows"].first["elements"].first["status"] == "OK"
			parseData["rows"].first["elements"].first["distance"]["text"]
		else
			"N/A"
		end
	end
end
