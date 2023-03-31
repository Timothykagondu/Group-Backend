Rails.application.routes.draw do

  #movies
  resources :movies do
    put 'like', to: 'movies#like', on: :member
    put 'dislike', to: 'movies#dislike', on: :member
  end

  resources :movie_genres, only: [:create]

  #users
  post '/users', to: 'users#signup'
  post '/users/login', to: 'users#login'
  get '/user/login/check', to: 'users#confirm_login_status'
  delete '/users/logout', to: 'users#logout'
  delete 'users/deactivate', to: 'users#deactivate'

  #genres
  resources :genres, only: [:index, :show]
  get '/genres/:id/movies', to: 'genres#show'

  #reviews
  get '/movies/:movie_id/reviews', to: 'reviews#index'
  post '/movies/:movie_id/reviews', to: 'reviews#create'

end
