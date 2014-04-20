Chelp::Application.routes.draw do
  resources :reports
  resources :messages
  resources :users
  resources :charities
  resources :sessions
  
  get 'login' => 'sessions#new'
  get 'logout' => 'sessions#destroy'

  get 'contact_us' => 'messages#new'
end
