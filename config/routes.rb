Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  get '/categories' => 'categories#index'
  get '/categories/new' => 'categories#new'
  get '/categories/title/:title' => 'categories#find_title'
  delete '/categories/delete/:id' => 'categories#delete', as: 'category_delete'
  get '/categories/edit/:id' => 'categories#edit', as: 'category_edit'
  get '/categories/:id' => 'categories#show', as: 'category_show'
  put '/categories/update/:id' => 'categories#update', as: 'category_update'
  post 'categories' => 'categories#create', as: 'category_create'
end
