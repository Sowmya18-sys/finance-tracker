Rails.application.routes.draw do
  get 'friendships/create'
  get 'friendships/destroy'
  resources :user_stocks
  resources :user_stocks, only: [:create, :destroy]
  devise_for :users
  root 'welcome#index'
  get 'my_portfolio', to: 'users#my_portfolio'
  get 'search_stock', to: 'stocks#search'
  get 'my_friends', to: 'users#my_friends'
  get 'search_friend', to: 'user#search'
  resources :friendships, only: [:create, :destroy]
  resources :users, only: [:show]
end
