Rails.application.routes.draw do
  resources :caregivers, only: [:index, :create]
  resources :patients, only: [:index]
  get "/patients/me", to: "patients#show"
  resources :appointments, only: [:index, :create, :show]
  resources :practitioners, only: [:index]
  post "/signup", to: "patients#create"
  post "/login", to: "sessions#create"
  delete "/logout", to: "sessions#destroy"
  get "/tests", to: "tests#index"
end
