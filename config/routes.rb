Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'

    resources :posts do
    resources :comments, only: [ :new, :create ] # doesn't really require new but we can keep it here for the time being.
    end
    # Figure out if the reactions need a route.
    # resources :reactions, only: [ :create, :show ]

  resources :comments, only: :destroy

end
