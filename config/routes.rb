Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
   # Routes for Category
  # get '/categories' => 'categories#index'
  # root to: 'categories#index'
  # get '/categories/new' => 'categories#new'
  # get '/categories/title/:title' => 'categories#find_title'
  # delete '/categories/delete/:id' => 'categories#delete', as: 'category_delete'
  # get '/categories/edit/:id' => 'categories#edit', as: 'category_edit'
  # get '/categories/:id' => 'categories#show', as: 'category_show'
  # put '/categories/update/:id' => 'categories#update', as: 'category_update'
  # post 'categories' => 'categories#create', as: 'category_create'
  root 'categories#index'
  get 'sign_up', to: 'registrations#new'
  post 'sign_up', to: 'registrations#create'
  get 'sign_in', to: 'sessions#new'
  post 'sign_in', to: 'sessions#create', as: 'log_in'
  delete 'logout', to: 'sessions#destroy'
  get 'password', to: 'passwords#edit', as: 'edit_password'
  patch 'password', to: 'passwords#update'
  get 'password/reset', to: 'password_resets#new'
  post 'password/reset', to: 'password_resets#create'
  get 'password/reset/edit', to: 'password_resets#edit'
  patch 'password/reset/edit', to: 'password_resets#update'

  get '/categories' => 'categories#index'
  # root to: 'categories#index'
  resources :users do
  resources :categories
  end 
  resources :categories do
  resources :tasks
end
  # Routes for Task
  # get '/tasks' => 'tasks#show
  # get '/tasks/task_name/:task_name' => 'tasks#find_task_name'
  # delete '/tasks/delete/:id' => 'tasks#delete', as: 'task_delete'
  # get '/tasks/edit/:id' => 'tasks#edit', as: 'task_edit'
  # get '/tasks/:id' => 'tasks#show', as: 'task_show'
  # put '/tasks/update/:id' => 'tasks#update', as: 'task_update'
  # get '/tasks/new/:categeory_id/:id' => 'tasks#new', as: 'task_new'
  # post 'tasks/:id' => 'tasks#create', as: 'task_create'

end
