Rails.application.routes.draw do
  get 'tasks/new'

  resources :tasks do
    resources :comments
  end

  root 'tasks#index'

  devise_for :users
end
