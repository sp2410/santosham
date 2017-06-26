Rails.application.routes.draw do
  resources :newsletter_users
  resources :messages
  resources :posts
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  match '/front', to: "posts#front", via: :get

  root 'posts#front'
end


