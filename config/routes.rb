Rails.application.routes.draw do
  devise_for :users
  resources :friends
  get 'home/friends'
  root 'home#index'
end
