Rails.application.routes.draw do
  get 'restaurants', to: 'restaurant#index'
  post 'restaurants', to: 'restaurant#create'
  get 'restaurant/:id', to: 'restaurant#show', as: 'restaurant'




  get 'pages/about'
  get '/contato', to: 'pages#contact'
  root to: 'pages#home'
end
