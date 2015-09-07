Rails.application.routes.draw do
  root "fronted#index"

  resources :bugs do 
    resources :comments
  end
end
