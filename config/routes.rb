Rails.application.routes.draw do

  get 'devices/index'
  get 'devices/show'
  get 'devices/edit'
  get 'devices/create'
  get 'devices/update'
  get 'devices/destroy'
  resources :listings

  root 'listings#index'

  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
