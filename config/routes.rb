Rails.application.routes.draw do
  
  root to: 'pages#Home'

  devise_for :users
  
  resources :users
  resources :topics
  resources :posts
  resources :sessions
  resources :entries
  resources :messages
  

  get 'pages/Home'
  get 'pages/Welcome'
  get 'pages/About'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
