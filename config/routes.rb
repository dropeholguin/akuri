Rails.application.routes.draw do
  resources :scores
  resources :comments
  resources :establishments
  devise_for :users
  get 'welcome/index'
  root 'welcome#index'
end 
