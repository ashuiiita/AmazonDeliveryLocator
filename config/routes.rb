Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get '/deliveryCentres/all' , to: 'delivery_centres#get_all_delivery_centres'
  get '/deliveryCentres/latitudeLongitude' , to: 'delivery_centres#get_latitude_longitude'
end
