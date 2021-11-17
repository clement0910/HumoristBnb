Rails.application.routes.draw do
  resources :humorists, only: [ :new, :create, :destroy, :edit, :index, :update ] do
    resources :bookings, only: [ :new, :create, :destroy, :edit, :update]
  end
  devise_for :users
  get "users/profile", to: "users#profile"
  root to: 'pages#home'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
