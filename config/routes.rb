Rails.application.routes.draw do
  resources :newsletter_users, only: [:new, :create]
  resources :messages, only: [:new, :create]
  resources :posts, only: [:new, :create, :update, :edit]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  match '/front', to: "posts#front", via: :get
  match '/astrology', to: "posts#astrology", via: :get
  match '/meditation', to: "posts#meditation", via: :get
  match '/yoga', to: "posts#yoga", via: :get
  match '/life', to: "posts#life", via: :get

  root 'posts#front'
end


