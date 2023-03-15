Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  root 'cocktails#index'

  resources :cocktails, except: :index do
    resources :attempts, only: [:new, :create]
  end
  resources :attempts, only: [:show, :edit, :update, :destroy]
end
