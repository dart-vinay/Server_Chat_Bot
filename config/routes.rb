Rails.application.routes.draw do
  
  get 'home/index'
  resources :sessions, only: [:new, :create, :destroy]
  
  # get ‘signup’, to: ‘users#new’, as: ‘signup’
  # get ‘login’, to: ‘sessions#new’, as: ‘login’
  # get ‘logout’, to: ‘sessions#destroy’, as: ‘logout’
  # get "sessions/create"
  get '/signup', to: "users#new", as: "signup"
  get '/login', to: "sessions#new", as: "login"
  get '/logout', to: "sessions#destroy", as: "logout"
  post '/present', to: "home#present"
  post '/absent', to: "home#absent"
  post '/coordinate', to: "home#coordinate"
  post '/imagefile', to: "home#imagefile"
  resources :users
  root 'user_data#index'
  resources :user_data
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
