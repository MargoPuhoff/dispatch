Rails.application.routes.draw do
  
  resources :dispatchers
  resources :treks
  resources :autos
  resources :drivers
  
  get    'login'   => 'sessions#new'
  post   'login'   => 'sessions#create'
  get 	 'logout'  => 'sessions#destroy'

  # Defines the root path route ("/")
  root "home#index"
end
