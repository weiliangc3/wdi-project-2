Rails.application.routes.draw do

  resources :wishes, only: [:update, :delete, :create]

  resources :weddings do
    resources :wishes, except: [:index, :show] do
      member do
        patch :claim
        patch :unclaim
      end
    end
    resources :attendances, except: [:edit, :show] do
      member do
        patch :confirm
      end
    end
  end
  devise_for :users, :controllers => { :invitations => 'users/invitations' }
  root 'statics#home'
end
