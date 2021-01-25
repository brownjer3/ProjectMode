Rails.application.routes.draw do
  root "projects#index"
  get "/home", to: "sessions#home"
  get "/signup", to: "users#new"
  post "/signup", to: "users#create"

  # standard login routes
  get "/login", to: "sessions#new"
  post "/login", to: "sessions#create"
  delete "/logout", to: "sessions#destroy"

  # Oauth routes
  get '/auth/:provider/callback', to: "sessions#omniauth"

  #testing the error page
  get '/error', to: "application#error"

  resources :users do
    resources :likes, shallow: :true
  end

  resources :cohorts, only: [:new, :create, :show]
  resources :phases, only: [:show]
  resources :comments, only: [:create, :destroy]
  resources :projects
  resources :users, only: [:new, :create, :show, :edit, :update, :destroy]
  resource :likes, only: [:create, :destroy]
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
