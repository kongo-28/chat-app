Rails.application.routes.draw do
  get 'messages/index'

  devise_for :users  
  #自分で追加

  root to: "messages#index"

  resources :users, only: [:edit, :update]
  resources :rooms, only: [:new, :create]

end
