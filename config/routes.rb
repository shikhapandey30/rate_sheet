Rails.application.routes.draw do
  
  root 'programs#index'
  resources :programs do
    collection { post :import }
  end   
  resources :adjustments
  
end
