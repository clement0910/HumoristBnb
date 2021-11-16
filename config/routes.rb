Rails.application.routes.draw do
  resources :bookings, only: [ :new, :create, :delete, :edit ]
  resources :humorists, only: [ :new, :create, :delete, :edit, :index ]
  devise_for :users
  get "users/profile", to: "users#profile"
  get "users/humorists", to: "users#humorists"
  root to: 'pages#home'

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
