Rails.application.routes.draw do

  root 'welcome#home'

  get '/signup' => 'users#new'
  post '/signup' => 'users#create' 

  get  '/login' => 'sessions#new'
  post '/login' => 'sessions#create'

  get '/logout' => 'sessions#destroy'

  resources :users do
    resources :reviews
  end

  resources :restaurants, only: [:index, :show, :new, :create]
  resources :cuisines, only: [:index, :show]
  resources :cities, only: [:index, :show]
  
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
