Rails.application.routes.draw do
  get 'signup', to: 'users#new', as: 'signup'
  get 'profile', to: 'users#show', as: 'profile'
  # get 'profile', to: 'users#show', as: 'profile'
  
  get 'login', to: 'sessions#new', as: 'login'
  post 'login', to: 'sessions#create'
  get 'logout', to: 'sessions#destroy', as: 'logout'
  get 'welcome', to: 'sessions#welcome', as: 'welcome'

  resources :users

  root to: "sessions#new"

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
