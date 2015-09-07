Rails.application.routes.draw do
  devise_for :users
  root "fronted#index"

  resources :bugs do 
    resources :comments
  end
end
