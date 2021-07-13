Rails.application.routes.draw do

  get '/', to: redirect("/#{I18n.default_locale}")
  scope "/:locale" do 
  devise_for :users
  resources :friends
  get 'home/friends'
  root 'home#index'

end
end
