Rails.application.routes.draw do
  get '/leisure', to: 'posts#leisure'
  get '/love', to: 'posts#love'
  get '/food', to: 'posts#food'

  resources :loves do
    resources :comments, only: [:create, :destroy]
  end
  
  root "posts#index"
end
