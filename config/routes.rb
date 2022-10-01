Rails.application.routes.draw do
  devise_for :users
  mount ActionCable.server => '/cable'
  root to: "pages#home"
  resources :users do
    resources :user_songs
    resources :user_instruments, only: [:new, :create, :edit, :update, :destroy]
    resources :user_chatrooms, only: [:create]
  end
  resources :chatrooms, only: :index
  resources :chatrooms, only: :show do
    resources :messages, only: :create
  end

  resources :users, only: :index do
    get 'favorited_users', to: "users#index_favorited"
    post 'user_unfavorited', to: "users#user_unfavorited"
  end


  post 'new_favorite', to: "users#create_favorited"
  get 'new_visitor', to: "users#new_visitor"
#   For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
