Rails.application.routes.draw do
  devise_for :users
  # get 'users/index'
  # get 'users/show'
  # get 'users/edit'
  resources :users, only: [:index, :show, :edit]
  # get 'books/new'
  # get 'books/index'
  # get 'books/show'
  # get 'books/edit'
  resources :books, only: [:new, :index, :show, :edit, :create, :update, :destroy]
  # devise_for :users
  # get 'homes/top'
  root to: "homes#top"
  get 'homes/about' => 'homes#about', as:'about'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
