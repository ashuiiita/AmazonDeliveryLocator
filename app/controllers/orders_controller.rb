class OrdersController < ApplicationController
	def prioritySetup
		priorityOrder = params[:priorityOrder]
		userId = params[:id]
		if Order.updatePriority(priorityOrder,userId)
			render :json => {:status => true}
		else
			render :json => {:status => false}
		end	
	end
end
