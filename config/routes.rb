Rails.application.routes.draw do
  get 'notifications/index'
  devise_for :users
  root to: 'posts#index'


  get 'profile', to: 'users#profile', as: 'profile'
  get '/posts/hashtag/:name', to: 'posts#hashtags', as: 'hashtag'
  get 'search/index', to: 'search#index'
    resources :posts do
      resources :comments, only: [ :index, :new, :create ]
      resources :reactions, only: [ :create, :destroy ]
    # doesn't really require new but we can keep it here for the time being.
    end
    # Figure out if the reactions need a route.
    # resources :reactions, only: [ :create, :show ]

  resources :comments, only: :destroy

  # root to: 'notifications#index'
  get 'notifications', to: 'notifications#index', as: 'notifications'
    resources :messages, :comments

  # Websockets resemble this URL
  # mount ActionCable.server => '/cable'

end
