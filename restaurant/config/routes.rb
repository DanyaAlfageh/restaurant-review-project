Rails.application.routes.draw do
  
  root 'resturants#index'

  devise_for :users
  
  resources :reviews, only: [:index, :show]

  resources :resturants, only: [:index, :show] do
    resources :reviews, except: [:index, :show] 
    # resources :images, [:index, :show]
  end

  resources :resturants, only: [:index, :show] do
    resources :images, except: [:index, :show] 
    # resources :images, [:index, :show]
  end
  
end
