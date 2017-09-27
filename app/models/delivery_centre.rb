class DeliveryCentre < ApplicationRecord
	self.table_name = "delivery_centres"

	validates :name , presence: true
	validates :address , presence: true
	validates :latitude , presence: true
	validates :longitude, presence: true


	def self.get_all_delivery_centres
		delivery_centres = DeliveryCentre.all
	end

end
