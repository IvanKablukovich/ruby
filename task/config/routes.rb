Rails.application.routes.draw do
  get 'tasks/new'

  resources :tasks do
    resources :comments
  end

  root 'tasks#index', as: 'home' 

  devise_for :users
end
