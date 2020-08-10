# frozen_string_literal: true

Rails.application.routes.draw do
  root to: "home#index"
  devise_for :users
  get 'home/index'
  get '/', to: 'home#index'
  resources :games
  resources :situations
  resources :actnesses
  resources :runnings
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  # For API
  namespace :api, { format: 'json' } do
    namespace :v1 do
      resources :games
      resources :situations
      resources :actnesses
      resources :runnings
    end
  end
end
