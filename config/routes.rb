Rails.application.routes.draw do
  devise_for :users
  root to: 'posts#index'
  get 'posts', to: 'posts#index'
  get 'posts/new', to: 'posts#new'
  post 'posts', to: 'posts#create'

  get 'stamps', to: 'stamps#index'
  get 'posts/edit', to: 'posts#edit'
  get 'stamps', to: 'stamps#edit'
  get 'posts/search', to: 'posts#search'

  resources :users, only: :show
  resources :posts, only: [:index, :new, :create, :destroy, :edit, :update, :search]


  resources :posts do
    resources :comments, only: :create
    collection do
      get 'search'
    end
  end
  resources :users, only: :show
end

