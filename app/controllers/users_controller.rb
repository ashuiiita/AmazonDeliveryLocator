class UsersController < ApplicationController

	def getOrders
		userId = params[:id].to_i
		userOrdersData = User.find_by_id(userId).getAllOrders
		userOrders = []
		for data in userOrdersData do
			distance = UsersHelper.getLocationData(params[:user_location_latitude],params[:user_location_longitude],data.latitude,data.longitude)
			dataHash = {
				:user_id => data.user_id,
				:order_name => data.order_description,
				:order_id => data.order_id,
				:delivery_centre_id => data.delivery_centre_id,
				:order_description => data.order_description,
				:delivery_centre_latitude => data.latitude,
				:delivery_centre_longitude => data.longitude,
				:delivery_centre_name => data.delivery_centre_name,
				:distance => distance
			}
			userOrders.push(dataHash)	
		end
		userOrders
		render :json => userOrders.to_json
	end
end
