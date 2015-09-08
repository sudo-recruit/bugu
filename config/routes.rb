Rails.application.routes.draw do
  
  root "fronted#index"
  
  devise_for :users, :controllers => { :omniauth_callbacks => "users/omniauth_callbacks" }
  resources :bugs do 
    resources :comments
  end
end
