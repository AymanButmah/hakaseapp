Rails.application.routes.draw do
  get 'home/friends'
  root 'home#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :events
  get "home/events"
end
