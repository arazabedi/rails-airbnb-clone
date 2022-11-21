Rails.application.routes.draw do
  devise_for :users
  root to: "pages#home"

  get "pets", to: "pets#index"

  get "pets/:id", to: "pets#show", as: :pet

  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"


end
