class Order < ApplicationRecord
<<<<<<< HEAD
  validates :name , presence: true
  validates :user_id , presence: true
  validates :delivery_centre_id , presence: true
  validates :deliveryDate , presence: true

  belongs_to :user
  belongs_to :delivery_centre

  def self.updatePriority(priorityOrder,userId)
  	finalStatus = false
  	Order.transaction do
  		begin
  			for order in priorityOrder do
  				userOrder = Order.where(:user_id => userId , :id => order["order_id"]).first			
				userOrder.priority = order["priority"].to_i
				userOrder.save
			end
		rescue
			finalStatus
		end
	end
	finalStatus = true
	finalStatus
  end		
=======

	def retrieve_orders(userid)
		requiredOrders = Order.where ( user_id: userid).all
	end
>>>>>>> API to find the best delivery center
end
