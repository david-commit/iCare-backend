Rails.application.routes.draw do
  resources :caregivers, only: [:index, :create]
  resources :patients, only: [:index]
  get "/patients/me", to: "patients#show"
  resources :appointments, only: [:index, :create, :show]
  resources :practitioners, only: [:index]
  post "/signup", to: "pateints#create"
end
