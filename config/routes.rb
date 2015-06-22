require 'resque/server'

Rails.application.routes.draw do
  mount Resque::Server.new, at: "/resque" # the url /resque is completely arbitrary. you can use whatever you like here, such as 'background jobs'

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
