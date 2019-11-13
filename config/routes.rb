Rails.application.routes.draw do
  resources :entries
  resources :messages
  root to: 'messages#new'
  get 'pages/Home'
  get 'pages/Welcome'
  get 'pages/About'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
