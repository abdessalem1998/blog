Rails.application.routes.draw do
  devise_for :users
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  root "users#index"
  resources :users, only: [:index, :show] do
    resources :posts, only: [:index, :show, :new, :create, :destroy] do
      resources :comments, only: [:create, :destroy]
      resources :likes, only: [:create]
    end
  end
  # Defines the root path route ("/")
  # root "articles#index"
  post '/api/login', to: 'authentication#login' 
  get '/api/posts', to: 'posts#get_posts' 
  get '/api/comments', to: 'comments#get_comments' 
  post '/api/comments', to: 'comments#add_comment' 
end
