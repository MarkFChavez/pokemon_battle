Rails.application.routes.draw do
  root "home#index"

  resources :matchups, only: [:update]
end
