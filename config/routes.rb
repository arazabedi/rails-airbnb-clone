Rails.application.routes.draw do
  devise_for :users
  root to: "listings#index"
  resources :listings, :users, :rentals
  # get "listings/:id", to "listings#show", as: :listing
end
