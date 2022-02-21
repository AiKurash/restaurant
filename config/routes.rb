Rails.application.routes.draw do
  get 'pages/home'
  get 'pages/catering'
  get 'pages/info'
  resources :roles
  root 'cert_categories#index'
  get 'help', to: 'static_pages#help'
  get 'about', to: 'static_pages#about'
  resources :articles, except: [:index1]

  get 'articles_1', to: 'articles#index1'
  get 'signup', to: 'users#new'

  resources :users, except: [:new]

  get 'login', to: 'sessions#new'
  post 'login', to: 'sessions#create'
  delete 'logout', to: 'sessions#destroy'

  resources :categories, except: [:destroy]
end
