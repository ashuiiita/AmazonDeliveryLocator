require "http"
require 'rubygems'
require 'json'

class DeliveryCentresController < ApplicationController
	include UsersHelper
	
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
		curr_x = params[:latitude].to_f
		curr_y = params[:longitude].to_f
		best_fulfillment_center = -1
		min_distance = 10000000.to_f
		threshold = 10.to_f
		requiredOrders = Order.retrieve_orders(params[:id])
		for orders in requiredOrders do
  			x = orders.delivery_centre.latitude
  			y = orders.delivery_centre.longitude

  			distance = UsersHelper.getDistanceInMeters(curr_x,curr_y,x,y)
  			if(distance != nil)
  				distance = distance / 1000.0
  			
	  			if(distance < min_distance)
	  				min_distance = distance
	  				best_fulfillment_center = orders.delivery_centre
	  			end
	  		end
		end
		
		if (min_distance <= threshold )
			render :json => {:delivery_centre => best_fulfillment_center , :status => true}
		else
			render :json => {:status => false}
		end
	end



end
