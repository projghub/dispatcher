Dispatch::Application.routes.draw do
  root :to => 'static_pages#index'

  match 'api/customers' => 'api/customers#index'
  match 'api/customers/create' => 'api/customers#create'
end
