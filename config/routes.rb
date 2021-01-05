Rails.application.routes.draw do

  root 'welcome#home'

  get '/signup' => 'users#new'
  post '/signup' => 'users#create' 

  get  '/login' => 'sessions#new'
  post '/login' => 'sessions#create'

  get '/auth/facebook/callback' => 'sessions#facebookcreate'

  get '/logout' => 'sessions#destroy'

  get '/restaurants/highest_rated' => 'restaurants#highest_rated', as: :highest_rated

  get '/restaurants/popular' => 'restaurants#popular', as: :popular

  resources :users, except: :show do
    resources :reviews
  end

  resources :restaurants, only: [:index, :show]
  resources :cuisines, only: [:index, :show]
  resources :cities, only: [:index, :show]
  
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
