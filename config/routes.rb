Rails.application.routes.draw do
  
  resources :dispatchers
  resources :treks
  resources :autos
  resources :drivers
  
  get    'login'   => 'sessions#new'
  post   'login'   => 'sessions#create'
  get 	 'logout'  => 'sessions#destroy'

	get    'driver_login'   => 'driver_sessions#new'
  post   'driver_login'   => 'driver_sessions#create'
  get 	 'driver_logout'  => 'driver_sessions#destroy'


  # Defines the root path route ("/")
  root "home#index"
end
