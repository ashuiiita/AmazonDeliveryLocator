Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get '/deliveryCentres/all' , to: 'delivery_centres#get_all_delivery_centres'
  get '/deliveryCentres/latitudeLongitude' , to: 'delivery_centres#get_latitude_longitude'
  get '/user/:id/allOrders' , to: 'users#getOrders'
  post '/user/:id/prioritySetup' , to: 'orders#prioritySetup'
  get '/user/:id/getClosestDeliveryCentre' , to: 'delivery_centres#get_min_distance'

end
