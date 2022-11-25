Rails.application.routes.draw do
  # get 'users/index'
  # get 'users/edit'
  # get 'users/new'
  # get 'index/edit'
  # get 'index/new'
root 'users#alluser'
  resources:users 
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
