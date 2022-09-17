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
    resources :chatrooms, param: :slug
    resources :messages
  end

  resources :users, only: :index do
    member do
      post 'toggle_favorite', to: "users#toggle_favorite"
    end
  end
  get 'favorited_users', to: "users#index_favorited"
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
