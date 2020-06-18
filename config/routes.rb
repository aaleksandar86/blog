Rails.application.routes.draw do
  get 'users/new'
  get 'users/create'
  root to: 'articles#index'

  resources :articles do
    resources :comments
  end

  resources :users

  get '/signup', to: 'users#new'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
