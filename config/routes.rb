Rails.application.routes.draw do
  resources :runnings
  resources :actnesses
  resources :situations
  resources :games
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
