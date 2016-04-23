Rails.application.routes.draw do


  resources :weddings do
    resources :wishes, except: [:index, :show]
    resources :attendances, except: [:edit, :show]
  end
  devise_for :users
  root 'statics#home'
end
