Rails.application.routes.draw do
  get 'application_requests/new'
  get 'application_requests/create'
  get 'applications/new'
  get 'applications/create'
  devise_for :users
  root to: 'pages#home'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  # resources :users
  resources :projects, only: [:new, :create, :index, :show] do
    resources :application_requests, only: [:new, :create]
  end

end
