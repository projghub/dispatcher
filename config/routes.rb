Dispatch::Application.routes.draw do
  root :to => 'static_pages#index'

  get 'login', to: 'sessions#new', as: 'login'
  get 'logout', to: 'sessions#destroy', as: 'logout'

  resources :customers
  resources :feeds
  resources :lists
  resources :pulls
  resources :pushes
  resources :sessions
  resources :timezones
  resources :users
  resources :vendors

  match 'api_keys/create/:id' => 'api_keys#create', as: 'api_key_create', via: :get
  match 'api_keys/destroy/:id' => 'api_keys#destroy', as: 'api_key_destroy'

  match 'api/customers' => 'api/customers#index'
  match 'api/customers/create' => 'api/customers#create', via: :post
end
