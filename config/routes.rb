Rails.application.routes.draw do



 devise_for :users
 root to: 'homes#top'
get 'home/about' => 'homes#about' ,as: :about


 resources :users, only: [:show, :edit, :create]
 resources :books, only: [:new, :index, :show, :edit]





  # For details on the DSL avaらilable within this file, see https://guides.rubyonrails.org/routing.html
end
