Rails.application.routes.draw do

  
  resources :messages
  post '/login', to: 'sessions#create'
  delete '/logout', to: 'sessions#destroy'
  get '/logged_in', to: 'sessions#is_logged_in?'

  resources :users, only: [:create, :show, :index]
  resources :requests
  resources :volunteers
  resources :user_requests
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
