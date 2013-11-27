TwitterApp::Application.routes.draw do

  match 'user/edit' => 'users#edit', :as => :edit_current_user
  match 'signup' => 'users#new', :as => :signup
  match 'logout' => 'sessions#destroy', :as => :logout
  match 'login' => 'sessions#new', :as => :login
  match 'post/create' => 'posts#create', :as => :create_post, :via => :post

  get '/:username/follower' => 'users#follower', :as => :follower
  get '/:username' => 'users#index', :constrain => { :username => /[a-zA-Z-]+/ }
  get '/:username' => 'users#index', :as => :user_detail
  resources :users
  resources :posts
  resources :followers
  resources :sessions
  root :to => 'posts#index'

end
