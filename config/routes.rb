Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  resources :application_requests, only: [:index]

  resources :projects, only: [:new, :create, :index, :show, :destroy] do
    resources :application_requests, only: [:new, :create]
    resources :roles, only: [:new, :create]
  end

  resources :roles, only: :destroy

  get "my_projects", to: "projects#my_projects", as: "my_projects"
  get "my_project_request", to: "application_requests#my_project_request"

  put "application_requests/:project_id/accept", to: "application_requests#accept", as: "accept"
  put "application_requests/:project_id/decline", to: "application_requests#decline", as: "decline"
end
