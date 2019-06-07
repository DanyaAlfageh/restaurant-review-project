Rails.application.routes.draw do
  
  root 'resturants#index'

  devise_for :users

  resources :resturants, only: [:index, :show] do
    resources :reviews, except: [:index, :show] 
  end
  
end
