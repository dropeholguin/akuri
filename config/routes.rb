Rails.application.routes.draw do
  resources :locations
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  resources :scores

  resources :establishments do
  	resources :comments
  end

  devise_for :users, controllers: {registrations: "users/registrations" }
  root 'welcome#index'
end 
