Rails.application.routes.draw do
  resources :cohorts do
    member do
      get :users
    end
  end
  # get 'password_resets/new'
  get 'signup', to: 'users#new', as: 'signup'
  get 'profile/:id', to: 'users#show', as: 'profile'
  # get 'profile', to: 'users#show', as: 'profile'
  
  get 'login', to: 'sessions#new', as: 'login'
  post 'login', to: 'sessions#create'
  get 'logout', to: 'sessions#destroy', as: 'logout'
  get 'welcome', to: 'sessions#welcome', as: 'welcome'


  post 'change_profile_status', to: 'users#change_profile_status'
  post 'change_user_cohort', to: 'users#change_user_cohort'

  root to: "sessions#welcome"


  resources :users

  resources :password_resets

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
