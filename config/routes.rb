Rails.application.routes.draw do
  resources :articles
  resources :comments
  resource  :account,   only: [:show] do
    get :work
  end

  get  '/login'     => 'sessions#new'
  post '/login'     => 'sessions#create'
  get  '/logout'    => 'sessions#destroy'

  get  '/dashboard' => 'dashboard#show'

  root to: 'articles#index'
end