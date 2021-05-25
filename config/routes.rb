Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  root "pages#home"
  get "about", to: "pages#about"
  resources :articles
  get "signup", to: "users#new" 
  # signup route to user controller,  new Action
  
  
  # post 'users', to: 'users#create' 
  resources :users, except: [:new]

  #we dont use resources routes for login
  get "login", to: "sessions#new"
  post "login", to: "sessions#create"
  delete "logout", to: "sessions#destroy"

end
 