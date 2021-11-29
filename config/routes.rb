Rails.application.routes.draw do
  # get 'login/create'
  # resources :users
  #  root 'home#index'
  #  get '/home', to: "home#"
  #  get '/home_three', to: "home#dashboardthree"
  resource :users, only: [:create]
  post "/login", to: "users#login"
  get "/auto_login", to: "users#auto_login"
  get "/users/new_user", to: "users#new"
  get "/users/index", to: "users#index"
#  get "/admin/index", to:"admin#index"
#  get "/admin/new_user", to:"admin#new"
#  root 'home#index'
get "/home/index", to: "home#index"
#    get '/home_two', to: "home#dashboardtwo"
#    get '/home_three', to: "home#dashboardthree"
 root 'users#navbar'
 resource :articles
 get "/articles/index", to: "articles#index"
#  get "/articles/show", to: "articles#show"
  end
