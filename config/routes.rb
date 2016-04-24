Rails.application.routes.draw do

  resources :wishes, only: [:update, :delete, :create]

  resources :weddings do
    resources :wishes, except: [:index, :show] do
      member do
        patch :claim
        patch :unclaim
      end
    end
    resources :attendances, except: [:edit, :show]
  end
  devise_for :users
  root 'statics#home'
end
