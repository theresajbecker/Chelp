Chelp::Application.routes.draw do
  resources :reviews

  resources :reports
  resources :messages
  resources :users
  resources :charities
  resources :sessions, only: [:index, :new, :destroy, :fromOAuth]
  
  get 'login' => 'sessions#new'
  post 'login' => 'sessions#create'
  get 'logout' => 'sessions#destroy'

  get 'contact_us' => 'messages#new'

  get 'auth/:provider/callback', to: 'sessions#fromOAuth'
  get 'auth/failure', to: redirect('/')

end