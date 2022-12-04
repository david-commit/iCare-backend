Rails.application.routes.draw do
  resources :caregivers, only: [:index, :create]
  resources :patients, only: [:index, :create]
  get "/patients/#{patient.name}", to: "patients#show"
end
