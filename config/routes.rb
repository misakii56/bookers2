Rails.application.routes.draw do



 devise_for :users
 root to: 'homes#top'
get 'home/about' => 'homes#about' ,as: :about
#get 'users/show' => 'users#show' ,as: :user
 patch 'users/:id' => 'users#update', as: 'update_user'
  delete 'books/:id' => 'books#destroy', as: 'destroy_book'
  patch 'books/:id' => 'books#update', as: 'update_book'
 resources :users, only: [:show, :edit, :create, :index]
 resources :books, only: [:new, :index, :show, :edit, :create, :destroy]





  # For details on the DSL avaらilable within this file, see https://guides.rubyonrails.org/routing.html
end
