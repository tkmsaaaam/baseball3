Rails.application.routes.draw do
  get 'home/index'
  get '/', to:'home#index'
  resources :games
  resources :situations
  resources :actnesses
  resources :runnings
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
