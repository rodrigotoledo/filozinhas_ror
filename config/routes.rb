# frozen_string_literal: true

Rails.application.routes.draw do
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  resources :product_variants
  resources :products
  namespace :api do
    resources :categories, only: [:index, :show] do
      collection do
        get :featured
      end
    end
    resources :products, only: [:index, :show] do
      collection do
        get :with_discount, :by_category
      end
    end
  end
  resources :categories
  root to: 'welcome#index'
  get 'welcome/index'
  get 'welcome/search', as: :search
  devise_for :users
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
