Rails.application.routes.draw do
  devise_for :users
  root to: "listings#index"

  resources :listings do
    resources :rentals, only: [:create]
  end

  resources :users, only: [:show]
  get "contact_us", to: "pages#contact_us"
  get "about", to: "pages#about"
  get "home", to: "pages#home"

  # get "listings/:id", to "listings#show", as: :listing
end
