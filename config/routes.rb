Rails.application.routes.draw do
  devise_for :users
  mount ActionCable.server => '/cable'
  root to: "pages#home"
  resources :users do
    member do
      get :parameters
    end
    resources :user_songs
    resources :user_instruments, only: [:new, :create, :edit, :update, :destroy]
  end
  resources :chatrooms, only: :index
  resources :chatrooms, only: :show do
    resources :messages, only: :create
  end

  resources :users, only: :index do
    member do
      post 'toggle_favorite', to: "users#toggle_favorite"
    end
  end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
