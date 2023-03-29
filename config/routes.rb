Rails.application.routes.draw do
  resources :genres, only: [:index, :show]
  resources :movies
  resources :movie_genres, only: [:create]
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
