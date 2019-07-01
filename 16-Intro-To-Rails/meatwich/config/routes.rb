Rails.application.routes.draw do
  resources :fries
  resources :burgers

  get '/', to: 'burgers#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
