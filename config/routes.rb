Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  get '/register', to: 'users#new'
  post '/users', to: 'users#create'

  get '/login', to: 'sessions#new'
  post '/sessions', to: 'sessions#create'

  root 'application#welcome'
  get '/signout', to: 'sessions#destroy', via: 'delete' 

  resources :dashboards, only: [:index]

  get 'auth/google_oauth2/callback', to: 'sessions#google_oauth'
  
  resources :users
  resources :weeks
  
  resources :recipes do
    resources :ingredients
  end  
end
