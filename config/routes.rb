Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"

  root "pages#home"
  # get '/recipes', to: 'recipes#index'
  # get '/recipes/new', to: 'recipes#new'

  # get '/recipes/:id', to: 'recipes#show', as: 'recipe'
  resources :recipes
  get '/signup' , to:'chefs#new'
  resources :chefs

  get '/login', to: 'sessions#new'
  post '/login', to: "sessions#create"
  delete '/logout', to: "sessions#destroy"
end
