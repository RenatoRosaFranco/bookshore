# frozen_string_literal: true

Rails.application.routes.draw do
  # Authentication
  devise_for :users

  # Application
  root to: "home#index"

  # OnPage
  get "/schedule", to: "schedule#index"
  get "/tickets", to: "tickets#index"
  get "/queens", to: "queens#index"
  get "/shows", to: "home#index"

  # Contact
  get "/contact", to: "contact#index"
  post "/contact", to: "contact#create"

  # Dashboard
  namespace :dashboard do
    get "/", to: "home#index"

    resources :exhibitors
    resources :sponsors
    resources :articles
  end

  # Blog
  namespace :blog  do
    resources :articles, only: [ :index, :show ]
  end
end
