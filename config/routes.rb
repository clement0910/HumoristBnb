Rails.application.routes.draw do
  get 'humorists/new'
  get 'humorists/show'
  get 'humorists/index'
  get 'humorists/add'
  get 'humorists/destroy'
  get 'humorists/edit'
  devise_for :users
  root to: 'pages#home'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
