Rails.application.routes.draw do
  resources :reviews
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  resources :users, only: [:index, :show, :create]
end
# rails generate model Review user:references movie:references rating:integer comment:text
# rails db:migrate
# rails generate resource Review user:references movie:references rating:integer comment:text
