Rails.application.routes.draw do
  resources :users
  resources :jobs
  resources :companies
  resources :sessions
end
