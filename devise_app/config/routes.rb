Rails.application.routes.draw do
  get 'chats/show'
  get 'chats/create'
  devise_for :users
  root 'blogs#index'

  resources :blogs
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  # devise
  root to: "home#index"
  resources :users, :only => [:show]

  # mail ※デモ用サイトのため、本番でもletter_openerを使う
  mount LetterOpenerWeb::Engine, at: "/letter_opener"

end
