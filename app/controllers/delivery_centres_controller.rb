require "http"
require 'rubygems'
require 'json'

class DeliveryCentresController < ApplicationController

	def get_all_delivery_centres
		deliveryCentres = DeliveryCentre.get_all_delivery_centres
		results = {:delivery_centres => deliveryCentres.to_json}
		render :json => results
	end

	def get_latitude_longitude
		latitudeLongitude = DeliveryCentre.get_latitude_longitude
		results = {:latitude_longitude => latitudeLongitude.to_json}
		render :json => results
	end

	def get_min_distance
		curr_x = params[:latitude]
		curr_y = params[:longitude]
		best_fulfillment_center = -1
		min_distance = 10000000
		THRESHOLD = 10
		requiredOrders = Order.retrieve_orders(params[:userid])
		for orders in requiredorders do
  			x = orders.delivery_centres.latitude
  			y = orders.delivery_centres.longitude

  			apistring = "https://maps.googleapis.com/maps/api/distancematrix/json?origins=" + curr_x + "," + curr_y
  			apistring = apistring + "&destinations=" + x + "," + y + "&key=" + "AIzaSyBVKykw5J7k44ve9GIC0mlqWwm0XZjTPWw"

  			body = JSON.parse(HTTP.get(apistring).to_s)
  			distance = body["rows"][0]["elements"][0]["distance"]["value"]/1000
  			if(distance < min_distance)
  				min_distance = distance
  				best_fulfillment_center = orders.delivery_centres
  			end
		end
		
		if (min_distance <= THRESHOLD )
			return best_fulfillment_center
		else
			return nil
		end
	end



end
