Rails.application.routes.draw do
  # add custom routes up here
  root "welcome#home"
  # Oauth routes
  get '/auth/:provider/callback', to: "sessions#omniauth"

  get "/signup", to: "users#new"
  post "/signup", to: "users#create" #this is only needed for failed signup attempts if we still want the link to be /signup and not 'users/new'

  # standard login routes
  get "/login", to: "sessions#new"
  post "/login", to: "sessions#create"
  delete "/logout", to: "sessions#destroy"

  #testing the error page
  get '/error', to: "application#error"

  resources :cohorts
  resources :phases
  resources :comments
  resources :projects
  resources :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
