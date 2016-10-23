Rails.application.routes.draw do
  resources :scores
  resources :comments
  resources :establishments
  devise_for :users, controllers: {registrations: "users/registrations" }
  root 'welcome#index'
end 
