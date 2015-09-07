Rails.application.routes.draw do
  
  root "fronted#index"
  
  devise_for :users
  resources :bugs do 
    resources :comments
  end
end
