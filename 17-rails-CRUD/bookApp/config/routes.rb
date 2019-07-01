Rails.application.routes.draw do
  resources :books
  # get 'books', to: 'books#index', as: "index"
  # get 'books/:id', to: 'books#show', as: "test"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
