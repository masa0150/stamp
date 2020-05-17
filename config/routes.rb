Rails.application.routes.draw do
  devise_for :users
  root to: 'posts#index'
  get 'posts', to: 'posts#index'
  get 'posts/new', to: 'posts#new'
  post 'posts', to: 'posts#create'
  get 'stamps', to: 'stamps#index'
  get 'posts/edit', to: 'posts#edit'
  get 'stamps', to: 'stamps#edit'
  resources :users, only: :show
  resources :posts, only: [:index, :new, :create, :destroy, :edit, :update]
end
