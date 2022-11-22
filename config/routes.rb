Rails.application.routes.draw do
  get 'users/name'
  get 'users/email'

resources :listings, :users, :rentals

  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
<<<<<<< HEAD


=======
  resources :user, :listing, :listing
>>>>>>> devise
end
