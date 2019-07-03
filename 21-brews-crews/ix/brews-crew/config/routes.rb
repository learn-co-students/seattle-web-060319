Rails.application.routes.draw do
  get '/brews/strongest', to: 'brews#strongest', as: 'strongest'
  resources :purchases
  resources :brews
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

end
