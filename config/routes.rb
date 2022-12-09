Rails.application.routes.draw do

  get "/caregivers", to: "caregivers#index"
  post "/caregivers", to: "caregivers#create"

  get "/patients", to: "patients#index"
  post "/signup", to: "patients#create"
  get "/me", to: "patients#show"

  post "/login", to: "sessions#create"
  delete "/logout", to: "sessions#destroy"

  get "/appointments", to: "appointments#index"
  get "/appointments/:id", to: "appointments#show"
  post "/appointments", to: "appointments#create"
  delete "/appointments/:id", to: "appointments#destroy"
  
  get "/practitioners", to: "practitioners#index"

  get "/test", to: "tests#index"

end
