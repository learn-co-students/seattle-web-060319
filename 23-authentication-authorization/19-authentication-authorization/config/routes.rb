Rails.application.routes.draw do
  resources :users
  resources :students, only: [:show, :new, :index, :create]
  root 'students#index'
  get '/signup', to: "users#new"
  get '/login', to: "auth#new"
  post '/login', to: "auth#create"
  delete '/login', to: 'auth#destroy', as: "logout"
  # post '/signup', to: "users#create"
  # get '/login', to: ''
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
