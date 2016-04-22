Rails.application.routes.draw do
  get 'statics/home'

  devise_for :users
  root 'statics#home'
end
