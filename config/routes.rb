Rails.application.routes.draw do
  resources :locations
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  resources :scores
  resources :comments

  resources :establishments do
    collection do
      get :autocomplete
    end
  end

  devise_for :users, controllers: {registrations: "users/registrations" }
  root 'welcome#index'
end 
