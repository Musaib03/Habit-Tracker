Rails.application.routes.draw do
  resource :session, only: [ :new, :create, :destroy ]

  # Root path should direct to the login page
  root to: "sessions#new"
  # Health check for monitoring (optional)
  get "up" => "rails/health#show", as: :rails_health_check
  # Uncomment if you want to enable PWA features
  # get "manifest" => "rails/pwa#manifest", as: :pwa_manifest
  # get "service-worker" => "rails/pwa#service_worker", as: :pwa_service_worker
end
