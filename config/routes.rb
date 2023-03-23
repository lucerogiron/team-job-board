Rails.application.routes.draw do
  resources :users
  resources :jobs
  resources :companies
  resources :sessions, only: [:new, :create, :destroy]
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  #vroom vroom car noises
end
