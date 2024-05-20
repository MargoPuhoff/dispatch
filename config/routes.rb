Rails.application.routes.draw do
  
  resources :dispatchers
  resources :treks
  resources :autos
  resources :drivers
  
  get    'login'   => 'sessions#new'
  post   'login'   => 'sessions#create'
  delete 'logout'  => 'sessions#destroy'
  get "up" => "rails/health#show", as: :rails_health_check

  # Defines the root path route ("/")
  root "treks#index"
end
