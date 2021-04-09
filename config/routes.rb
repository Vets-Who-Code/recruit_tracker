Rails.application.routes.draw do
  get 'signup', to: 'users#new', as: 'signup'
  get 'login', to: 'sessions#new', as: 'login'
  post 'login', to: 'sessions#create'
  get 'logout', to: 'sessions#destroy', as: 'logout'
  get 'welcome', to: 'sessions#welcome', as: 'welcome'

  resources :users

  root to: "sessions#welcome"

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
