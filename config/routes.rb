Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  resources :application_requests, only: [:index]

  resources :projects, only: [:new, :create, :index, :show] do
    resources :application_requests, only: [:new, :create]
    resources :roles, only: [:new, :create]
  end

  resources :roles, only: :destroy

  get "my_projects", to: "projects#my_projects", as: "my_projects"

end
