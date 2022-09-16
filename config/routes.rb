Rails.application.routes.draw do
  devise_for :users
  mount ActionCable.server => '/cable'
  root to: "pages#home"
  resources :users do
    resources :user_songs
    resources :user_instruments, only: [:new, :create, :edit, :update, :destroy]
    resources :chatrooms, param: :slug
    resources :messages
  end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
