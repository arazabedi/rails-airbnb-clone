Rails.application.routes.draw do
  devise_for :users
  root to: "pages#home"

  resources :listings do
    resources :rentals, only: [:create]
  end
  resources :rentals, only: [:show]
  resources :users, only: [:show]
  get "contact_us", to: "pages#contact_us"
  get "about", to: "pages#about"

  get "confirmation_page", to: "pages#confirmation_page"

  get "home", to: "pages#home"

  # get "listings/:id", to "listings#show", as: :listing
end
