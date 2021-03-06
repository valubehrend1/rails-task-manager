Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  #read
  get '/tasks', to: 'tasks#index', as: :tasks

  #create
  get 'tasks/new', to: 'tasks#new', as: :tasks_new
  post 'tasks', to: 'tasks#create', as: :tasks_create

  #read
  get 'tasks/:id', to: 'tasks#show', as: :task
  
  #update
  get 'tasks/edit/:id', to: 'tasks#edit', as: :tasks_edit

  #update
  patch 'tasks/:id', to: 'tasks#update', as: :tasks_update

  #delete
  delete 'tasks/:id', to: 'tasks#destroy', as: :tasks_delete
end
