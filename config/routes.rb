Rails.application.routes.draw do
  root to: 'pages#Home'
  devise_for :users
  resources :challenges
  
  
  # https://stackoverflow.com/questions/18392033/no-route-matches-post-sessions-user
  # Sessions controller conflicts with Devise, so i rerouted devise users 

  # devise_scope :user do 
  #   # root to: 'static_pages#home'
  #   match '/sessions/user', to: 'devise/sessions#create', via: :post
  # end
  
  resources :users
  resources :topics
  resources :posts
  # resources :sessions
  resources :entries
  resources :messages
  


  get 'pages/Home'
  get 'pages/Welcome'
  get 'pages/About'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
