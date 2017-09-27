class User < ApplicationRecord
  validates :name , presence: true
  validates :password , presence: true

  has_many :orders 

  def getAllOrders
  	orders = User.select("users.id as user_id, orders.id as order_id, delivery_centres.id as delivery_centre_id, orders.description as order_description,delivery_centres.latitude,delivery_centres.longitude,delivery_centres.name as delivery_centre_name").joins("INNER JOIN orders ON users.id = orders.user_id INNER JOIN delivery_centres ON orders.delivery_centre_id = delivery_centres.id").where(:id => id).order("orders.priority asc")
  end
end
