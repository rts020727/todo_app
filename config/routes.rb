Rails.application.routes.draw do
  
  root 'categories#index'
  resources :categories, only: [:create, :edit, :update, :destroy]

end
