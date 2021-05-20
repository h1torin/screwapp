Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'

  get 'profile', to: 'users#profile', as: 'profile'

    resources :posts do
    resources :comments, only: [ :new, :create ] 
    resources :reactions, only: [ :create ] 
    # doesn't really require new but we can keep it here for the time being.
    end
    # Figure out if the reactions need a route.
    # resources :reactions, only: [ :create, :show ]

  resources :comments, only: :destroy

end
