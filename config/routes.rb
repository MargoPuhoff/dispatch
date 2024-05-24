Rails.application.routes.draw do
  devise_for :dispatchers
  resources :dispatchers
  resources :treks do
    member do
      get :complete
    end
  end
  resources :autos
  resources :drivers

  get  'login'   			 => 'sessions#new'
  post 'login'   			 => 'sessions#create'
  get  'logout'  			 => 'sessions#destroy'

  get  'driver_login'  => 'driver_sessions#new'
  post 'driver_login'  => 'driver_sessions#create'
  get  'driver_logout' => 'driver_sessions#destroy'

  root 'home#index'
end
