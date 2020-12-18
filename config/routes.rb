Rails.application.routes.draw do

  root 'welcome#home'

  get '/signup' => 'users#new'
  post '/signup' => 'users#create' 

  get  '/login' => 'sessions#new'
  post '/login' => 'sessions#create'
  get '/logout' => 'sessions#destroy'

  resources :restaurants, only: [:new, :create, :destroy]
  
  resources :cities, only: [:show] do
    resources :cuisines, only: [:show]
  end

  resources :restaurants, only: [:show] do
    resources :reviews, only: [:new, :create]
  end
  
  resources :reviews
  resources :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
