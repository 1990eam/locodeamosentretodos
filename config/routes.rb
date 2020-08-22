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

  resources :users do
    resources :skills, only: [:index, :new, :create]
  end

  root to: 'pages#home'

  resources :application_requests, only: [:index]

  resources :projects, only: [:new, :create, :index, :show, :destroy, :edit, :update] do
    resources :application_requests, only: [:new, :create]
    resources :roles, only: [:new, :create]
  end

  resources :roles, only: :destroy

  resources :chatrooms, only: {} do
    resources :messages, only: :create
  end

  # resources :photos, path_names: { new: 'make', edit: 'change' }

  get "my_projects", to: "projects#my_projects", as: "my_projects"
  get "my_project_request", to: "application_requests#my_project_request"

  get "application_requests/:application_request_id/chatroom", to: "chatrooms#chatroom", as: "application_request_chatroom"

  put "application_requests/:application_id/accept", to: "application_requests#accept", as: "accept"
  put "application_requests/:application_id/decline", to: "application_requests#decline", as: "decline"

end
