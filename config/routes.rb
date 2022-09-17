Rails.application.routes.draw do
  devise_for :users
  root to: "pages#home"
  resources :users do
    resources :user_songs, only: [:index, :new, :create, :show, :destroy]
    resources :user_instruments, only: [:new, :create, :edit, :update, :destroy]
  end

  resources :users, only: :index do
    member do
      post 'toggle_favorite', to: "users#toggle_favorite"
    end
  end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
