Rails.application.routes.draw do
  root 'pages#home'
  get '/pages/home', to: 'pages#home'

  resources :doctors
  resources :patients
  resources :specializations
  resources :appointments

  get '/login', to: 'sessions#new'
  post '/login', to: 'sessions#create'
  delete '/logout', to: 'sessions#destroy'


end
