Rails.application.routes.draw do
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  resources :scores
  resources :comments
  resources :establishments
  devise_for :users, controllers: {registrations: "users/registrations" }
  root 'welcome#index'
end 
