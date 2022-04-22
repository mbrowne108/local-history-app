Rails.application.routes.draw do
  resources :categories, only: [:index]
  resources :visits, only: [:index]
  resources :sites, only: [:index, :show]
  # resources :users, only: [:index]
end
