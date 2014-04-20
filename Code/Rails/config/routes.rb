Chelp::Application.routes.draw do
  resources :sessions
  resources :messages
  resources :users
  resources :charities

  get 'login' => 'sessions#new'
  get 'logout' => 'sessions#destroy'
  get 'contact_us' => 'contact_us#index'
end