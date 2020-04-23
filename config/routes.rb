Rails.application.routes.draw do
  devise_for :users
  root to: 'posts#index'
  get 'posts', to: 'posts#index'
  get 'posts/new', to: 'posts#new'
  post 'posts', to: 'posts#create'
  get 'stamps', to: 'stamps#index'
  resources :users, only: :show
end
