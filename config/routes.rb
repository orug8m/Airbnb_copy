Rails.application.routes.draw do
  devise_for :users
  root 'shares#index'
  resources :users, only: [:edit, :update, :show]
  resources :hosts
  resources :tags
  resources :shares, only: :index do
    collection do
      get 'search'
    end
  end
  resources :rooms do
    resources :room_images, only: [:create, :edit, :update, :show, :delete]
    resources :room_books, only: [:create, :edit, :update, :show, :delete]
  end
  resources :experiences do
    resources :experience_images, only: [:create, :edit, :update, :show, :delete]
    resources :experience_books, only: [:create, :edit, :update, :show, :delete]
  end
  resources :restaurants do
    resources :restaurant_images, only: [:create, :edit, :update, :show, :delete]
    resources :restaurant_books, only: [:create, :edit, :update, :show, :delete]
  end
end
