Rails.application.routes.draw do
  get 'sessions/new'

  get    '/login',   to: 'sessions#new'

  post   '/login',   to: 'sessions#create'

  delete '/logout',  to: 'sessions#destroy'

  get 'users/index'

  get 'users/new'

  get  '/signup',  to: 'users#new'

  post '/signup',  to: 'users#create'

  get 'home/index'

  resources :microposts
  resources :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'home#index'
end
