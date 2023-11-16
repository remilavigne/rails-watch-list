Rails.application.routes.draw do
  get 'bookmarks/new'
  get 'bookmarks/create'
  get 'bookmarks/delete'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check

  # Defines the root path route ("/")
  root 'lists#index'
  get 'lists', to: 'lists#index'
  get 'lists/new', to: 'lists#new', as: :new_list
  post 'lists', to: 'lists#create'
  get 'lists/:id', to: 'lists#show', as: :list

  # get 'lists/:id/edit', to: 'lists#edit'
  # patch 'lists/:id', to: 'lists#update'

  # get 'lists/new', to: 'lists#new', as: :new_list
  # post 'lists', to: 'lists#create'
  # delete 'lists/:id', to: 'lists#destroy'
end
