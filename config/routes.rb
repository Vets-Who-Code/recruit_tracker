Rails.application.routes.draw do
  get 'signup', to: 'users#new', as: 'signup'
  get 'profile/:id', to: 'users#show', as: 'profile'
  # get 'profile', to: 'users#show', as: 'profile'
  
  get 'login', to: 'sessions#new', as: 'login'
  post 'login', to: 'sessions#create'
  get 'logout', to: 'sessions#destroy', as: 'logout'
  get 'welcome', to: 'sessions#welcome', as: 'welcome'

  resources :users

  post 'applied_to_submitted', to: 'users#applied_to_submitted'

  root to: "sessions#welcome"

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
