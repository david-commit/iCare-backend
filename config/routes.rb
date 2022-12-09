Rails.application.routes.draw do
  resources :caregivers, only: [:index, :create]

  get "/patients", to: "patients#index"
  post "/signup", to: "patients#create"
  get "/me", to: "patients#show"

  post "/login", to: "sessions#create"
  delete "/logout", to: "sessions#destroy"
  
  delete "/appointments/:id", to: "appointments#destroy"
  resources :appointments, only: [:index, :create, :show]
  
  resources :practitioners, only: [:index]
  
  get "/tests", to: "tests#index"
end
