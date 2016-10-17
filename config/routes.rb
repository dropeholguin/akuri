Rails.application.routes.draw do
  resources :establishments
  devise_for :users
  get 'welcome/index'
  root 'welcome#index'
end 
