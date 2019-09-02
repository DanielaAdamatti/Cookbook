Rails.application.routes.draw do
  devise_for :users
  root to: 'home#index'
  get '/recipes/search', to: 'recipes#search' #recipes search route
  get '/userrecipes', to: 'users#show' #route do user's recipes

  resources :recipes, only: [:show, :new, :create, :edit, :update, :index]
  resources :recipe_types, only: [:new, :create, :show]
end
