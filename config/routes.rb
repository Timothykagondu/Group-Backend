Rails.application.routes.draw do

  #genres-DONE!
  resources :genres, only: [:index, :show]
  get '/genres/:id/movies', to: 'genres#show'

  #movies
  resources :movies do
    put 'like', to: 'movies#like', on: :member
    put 'dislike', to: 'movies#dislike', on: :member
  end

  #movie-genres
  resources :movie_genres, only: [:create]

  #users
  post '/users', to: 'users#signup'
  post '/users/login', to: 'users#login'
  get '/user/login/check', to: 'users#confirm_login_status'
  delete '/users/logout', to: 'users#logout'
  delete 'users/deactivate', to: 'users#deactivate'
 get 'users', to: 'users#index'

  #reviews
  get '/movies/:movie_id/reviews', to: 'reviews#index'
  post '/movies/:movie_id/reviews', to: 'reviews#create'
  patch '/users/:user_id/reviews/:id', to: 'reviews#update'
  delete '/users/:user_id/reviews/:id', to: 'reviews#destroy'

end
