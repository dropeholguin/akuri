Rails.application.routes.draw do
  resources :scores
  resources :comments
  resources :establishments
  devise_for :users
  root 'welcome#index'
end 
