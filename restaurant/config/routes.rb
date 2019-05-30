Rails.application.routes.draw do
  
  get 'resturants/index'
  get 'resturants/show'
  root 'resturants#index'
  
  devise_for :users

  resources :reviews
  
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
