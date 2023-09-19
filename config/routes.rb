Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  # # Read all
  # get    "lists",          to: "lists#index"
  # # Create
  # get    "lists/new",      to: "lists#new",  as: :new_restaurant
  # post   "lists",          to: "lists#create"
  # # Read one - The `show` route needs to be *after* `new` route.
  # get    "lists/:id",      to: "lists#show", as: :restaurant
  # # Update
  # get    "lists/:id/edit", to: "lists#edit", as: :edit_restaurant
  # patch  "lists/:id",      to: "lists#update"
  # # Delete
  # delete "lists/:id",      to: "lists#destroy"

  root to: "lists#index"
  resources :lists do
    resources :bookmarks, only: [:index, :new, :show, :create]
  end
end
