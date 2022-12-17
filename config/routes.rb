  Rails.application.routes.draw do
    devise_for :users
   
   resources :comments
  resources :posts
   # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  get 'about', to: 'posts#about'
 
  root "posts#index"
end
