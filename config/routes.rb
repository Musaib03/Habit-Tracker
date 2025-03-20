Rails.application.routes.draw do
  get "salah_tracker/index"
  resource :session, only: [:new, :create, :destroy] # Handles login/logout
  resources :passwords, param: :token               # Handles password resets

  # Root path should direct to the login page
  root to: "sessions#new"
  get "dashboard", to: "salah_tracker#index", as: :dashboard
  # Health check for monitoring (optional)
  get "up" => "rails/health#show", as: :rails_health_check
  get "/logout", to: "sessions#destroy", as: :logout
  # Uncomment if you want to enable PWA features
  # get "manifest" => "rails/pwa#manifest", as: :pwa_manifest
  # get "service-worker" => "rails/pwa#service_worker", as: :pwa_service_worker
end
