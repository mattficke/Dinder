Rails.application.routes.draw do
  devise_for :users

  root "projects#index"

  resources :users do
    resources :projects
  end

  end
