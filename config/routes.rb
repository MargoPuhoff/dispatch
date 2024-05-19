Rails.application.routes.draw do
  resources :treks
  resources :autos
  resources :drivers
  
  get "up" => "rails/health#show", as: :rails_health_check

  # Defines the root path route ("/")
  root "treks#index"
end
