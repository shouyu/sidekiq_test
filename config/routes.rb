require 'sidekiq/web'

Rails.application.routes.draw do
  resources :messages
  root 'messages#index'

  mount Sidekiq::Web => '/sidekiq'
end
