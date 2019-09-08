Rails.application.routes.draw do
  devise_for :users
  root 'blogs#index'

  resources :blogs
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  # devise
  root to: "home#index"

  # mail ※デモ用サイトのため、本番でもletter_openerを使う
  mount LetterOpenerWeb::Engine, at: "/letter_opener"

end
