SeePeeps::Application.routes.draw do
  root to: "users#show" 

  get "/auth/:provider/callback", to: "sessions#create"
  post "/auth/:provider/callback", to: "sessions#create"
  get "/signout", to: "sessions#destroy", as: :sign_out

  # get '/users/:id', to: "users#show"

  post '/search', to: 'posts#search', as: :search
  post '/search_tum', to: 'posts#search_tum', as: :search_tum
  get '/searchpage', to: 'posts#searchpage', as: :searchpage


  resources :posts
  resources :users
  resources :authors
  resources :user_authors
 end
