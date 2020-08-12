Rails.application.routes.draw do

  # Some setup you must do manually if you haven't yet:

  #   Ensure you have overridden routes for generated controllers in your routes.rb.
  #   For example:

  #     Rails.application.routes.draw do
  #       devise_for :users, controllers: {
  #         sessions: 'users/sessions'
  #       }
  #     end
  devise_for :users, controllers: {
    registrations: "users/registrations"
  }

  root to: 'pages#home'

  resources :application_requests, only: [:index]

  resources :projects, only: [:new, :create, :index, :show, :destroy] do
    resources :application_requests, only: [:new, :create]
    resources :roles, only: [:new, :create]
  end

  resources :roles, only: :destroy

  get "my_projects", to: "projects#my_projects", as: "my_projects"

end
