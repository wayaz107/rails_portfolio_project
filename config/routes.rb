Rails.application.routes.draw do

  root 'welcome#home'

  get '/signup' => 'users#new'
  post '/signup' => 'users#create' 

  get  '/login' => 'sessions#new'
  post '/login' => 'sessions#create'
  delete '/logout' => 'sessions#destroy'


  resources :cuisines
  resources :cities
  resources :restaurants
  resources :reviews
  resources :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
