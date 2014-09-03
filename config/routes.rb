Rails.application.routes.draw do

 resources :stations
  root to: 'home#index'

 resources :lines

 resources :stops

 resources :buses
end
