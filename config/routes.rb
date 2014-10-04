Rails.application.routes.draw do
  root 'products#index'

  resource :cart, only: [:show] do
    put 'add/:movie_id', to: 'carts#add', as: :add_to
    put 'remove/:movie_id', to: 'carts#remove', as: :remove_from
  end

  get 'carts/show'

  devise_for :users

  get 'users/profile'

  resources :products

  post '/products/filter'

end
