Rails.application.routes.draw do
  root "jobs#index"

  resources :users
  resources :jobs
  resources :companies
  resources :sessions
end
