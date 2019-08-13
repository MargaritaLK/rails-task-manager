Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  get 'tasks', to: 'tasks#index', as: 'tasks'
  # nieuw task maken in form
  get 'tasks/new', to: 'tasks#new', as: 'new_task'
  # show details of one
  get 'tasks/:id', to: 'tasks#show', as: 'task'

  post 'tasks', to: 'tasks#create', as: 'created_task'

  # updating
  get 'tasks/:id/edit', to: 'tasks#edit', as: 'edit'
  patch 'tasks/:id', to: 'tasks#update', as: 'update'

  # destroy
  delete 'tasks/:id', to: 'tasks#destroy'

end
