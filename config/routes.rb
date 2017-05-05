Rails.application.routes.draw do
  get 'posts/leisure', to: 'posts#leisure'
  get 'posts/love', to: 'posts#love'
  get 'posts/food', to: 'posts#food'
  resources :loves
  root "posts#index"
end
