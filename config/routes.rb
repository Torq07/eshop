Rails.application.routes.draw do

  root to: 'welcome#index'

  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  devise_for :users
  resources :orders
  resources :welcome


end
