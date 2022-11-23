Rails.application.routes.draw do
  devise_for :users
  root to: "listings#index"
  resources :listings, :users, :rentals
  get "contact_us", to: "pages#contact_us"
  get "about", to: "pages#about"

  # get "listings/:id", to "listings#show", as: :listing
end
