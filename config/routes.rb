Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  # resources :users
  resources :projects, only: [:new, :create, :index, :show] do
    resources :application_requests, only: [:new, :create]
  end

end
