Rails.application.routes.draw do
  resources :appointments
  resources :caregivers, only: [:index, :create]
  resources :patients, only: [:index, :create]
  get "/me", to: "patients#show"
end
