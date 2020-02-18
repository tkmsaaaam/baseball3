Rails.application.routes.draw do
  resources :games
  resources :situations
  resources :actnesses
  resources :runnings
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
