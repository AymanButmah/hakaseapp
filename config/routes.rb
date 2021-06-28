Rails.application.routes.draw do
  resources :friends
  get 'home/friends'
  root 'home#index'
end
