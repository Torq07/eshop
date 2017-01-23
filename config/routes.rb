Rails.application.routes.draw do

  resources :orders
  root to: 'welcome#index'

  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  devise_for :users
  resources :welcome


end
