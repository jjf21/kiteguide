Rails.application.routes.draw do


  resources :products, only: [:index], path: 'matos'
  resources :brands, only: :index, path: 'matos/marques'
  
  resources :brands , only: [:show], path: "matos/",  param: :name do  
    resources :products, only: :show, path: ':year/:model/'
  end

  #/brand/year/model

  devise_for :users
  root to: 'pages#home'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
