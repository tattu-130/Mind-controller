Rails.application.routes.draw do
  root 'top#index'
  resources :questions, only: [:index]
  
end
