Rails.application.routes.draw do
  resources :caregivers, only: [:index, :create]
  resources :patients, only: [:index, :create]
  get "/me", to: "patients#show"
  resources :appointments, only: [:index, :create, :show]
end
