Rails.application.routes.draw do
  devise_for :users
  root 'top#index'
  get 'edit/user'
  #get 'list/new'
  #post 'list/create'
  resources :list, only: %i(new create edit update destroy)
  resources :user, only: %i(edit update)
end
