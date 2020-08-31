Rails.application.routes.draw do
  get '/pages/index'
  resources :users
  resources :test_posts
  get 'posts/index'
  get 'posts/new'
  get 'pages/home'
  get 'welcome/index'
  get 'posts/login'
  resources :articles do
  	resources :comments
  end

  resources :posts
  root 'posts#index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
