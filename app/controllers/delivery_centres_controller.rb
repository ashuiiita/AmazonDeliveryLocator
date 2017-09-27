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

end
