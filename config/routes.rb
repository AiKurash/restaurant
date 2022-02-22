Rails.application.routes.draw do
  resources :order_items, xhr: true

  get 'cart', to: 'cart#show'
  resources :product_categories
  get 'menu', to: 'menu#index'
  get 'search', to: 'menu#search'
  resources :products
  root 'pages#home'
  get 'catering', to: 'pages#catering'
  get 'info', to: 'pages#info'


  #get 'cert_categories#index'
  #get 'help', to: 'static_pages#help'
  #get 'about', to: 'static_pages#about'
  resources :articles

  get 'articles_1', to: 'articles#index1'
  get 'signup', to: 'users#new'

  resources :users, except: [:new]

  get 'login', to: 'sessions#new'
  post 'login', to: 'sessions#create'
  delete 'logout', to: 'sessions#destroy'

  resources :categories, except: [:destroy]
end
