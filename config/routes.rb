Rails.application.routes.draw do

 resources :stations
 root to: 'stations#index'

 resources :lines

 resources :stops
end
