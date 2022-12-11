  Rails.application.routes.draw do

   resources :comments
  resources :posts
  resources :users, exceped: [:new]
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  get 'about', to: 'posts#about'
  get 'signup', to: 'users#new'

  root "posts#index"
end
