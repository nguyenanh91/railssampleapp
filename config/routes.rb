Rails.application.routes.draw do
  get 'users/index'

  get 'users/new'

  get  '/signup',  to: 'users#new'

  get 'home/index'

  resources :microposts
  resources :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'home#index'
end
