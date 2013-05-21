Travelpatch::Application.routes.draw do
  resources :trip_destinations
  resources :trips
  resources :destinations

  get "users/new"

  get "users/create"

  get "sessions/new"

  get "sessions/create"

  get "sessions/destroy"

  get "trips/index"

  get "destinations/index"

  get "log_in" => "sessions#new", :as => "log_in"
  get "sign_up" => "users#new", :as => "sign_up"
  get "log_out" => "sessions#destroy", :as => "log_out"

  get "trip_list" => "trips#index", :as => "trip_list"

  get "select_destinations" => "destinations#index", :as => "select_destinations"

  root :to => "users#new"

  resources :users
  resources :sessions
end
