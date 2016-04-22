Rails.application.routes.draw do


  get 'wishes/new'
  get 'wishes/create'
  get 'wishes/edit'
  get 'wishes/update'
  get 'wishes/delete'

  get 'attendances/new'
  get 'attendances/index'
  get 'attendances/create'
  get 'attendances/delete'

  resources :weddings
  devise_for :users
  root 'statics#home'
end
