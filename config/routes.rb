Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  get '/register', to: 'users#new'
  post '/users', to: 'users#create'

  get '/login', to: 'sessions#new'
  post '/signin', to: 'sessions#create'
  # get '/signout', to: 'sessions#destroy', via: 'delete' 
  

  # resources :users, only: [:new, :create, :show]
  # resources :weeks
  # resources :recipes
  # resources :shopping_lists
end
