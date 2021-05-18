Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'

  get 'profile', to: 'users#profile', as: 'profile'
  get '/posts/hashtag/:name', to: 'posts#hashtags', as: 'hashtag'
  get 'search/index', to: 'search#index'

    resources :posts do
    resources :comments, only: [ :new, :create ] # doesn't really require new but we can keep it here for the time being.
    end
    # Figure out if the reactions need a route.
    # resources :reactions, only: [ :create, :show ]

  resources :comments, only: :destroy

end
