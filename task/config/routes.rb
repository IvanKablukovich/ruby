Rails.application.routes.draw do

  #get 'user/profile', as: 'user_root'
  get 'exercises/new'
  #get 'main/index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :exercises do
    resources :comments
  end

  root 'exercises#index'

  devise_for :users
end
