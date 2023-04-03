# Pelicula API

This is a Ruby on Rails API for a movie reviews application called Pelicula. The API provides endpoints for managing movies, reviews, genres, and user authentication.

The frontend portion of this application built with REACT can be found in this repository:

- [Portfolio-App-React-Frontend](https://github.com/Timothykagondu/pelicula) 

The application has been built with the MVC design pattern.

## Pre-Requisites
In order to use this repository you will need the following:

- Operating System **(Windows `10+`, Linux `3.8+`, or MacOS X `10.7+`)**
- RAM >= 4GB
- Free Space >= 2GB

## Built With
This application has been built with the following tools:

![ruby](https://img.shields.io/badge/Ruby-CC342D?style=for-the-badge&logo=ruby&logoColor=white)
![sqlite](https://img.shields.io/badge/SQLite-07405E?style=for-the-badge&logo=sqlite&logoColor=white)


- **Ruby `v2.7.+`**
- **SQlite3 `v1.6`**
- **ActiveRecord `v7.0.4`**
- **Rails `v7.0.4.3`**
- **Puma `v6.1`**
- **ERB `v4.0`**

## Setup
You can setup this repository by following this manual

1. Clone the repository
    ```{shell}
   git clone git@github.com:Timothykagondu/Group-Backend.git
   ```
2. To install all the required gem for this project run:
    ```{shell}
   bundle install
   ```
3. Perform any pending database migrations
   ```{shell}
   rails db:migrate
   ```
4. Seed the data
    ```{shell}
    rails db:seed
    ```
5. Run the application
    ```
     rails s
   ```
6. Open and view the application in your browser
    ```
     http://localhost:3000
   ```   
   
## Application
This application is a simple web API that allows users to:
- Sign up, Log in, Log out and Deactivate from the application
- Perform all CRUD methods on reviews
- Display all genres, display movies associated to genres
- Display all movies, display reviews associated to movies

### MODELS
Database schema definitions.

## MOVIE
The Movie model has the following attributes:

- title (string): The title of the movie.
- description (text): The description of the movie
- year (integer): The year the movie was created
- length (integer): The length of the movie.
- image_url (string): The image of the movie.
- rating (boolean): The ratings of the movie.

The Movie model has a one-to-many association with the Review model.

It also has a many-to-many association with the Genre model through the MovieGenre model

## REVIEW
A Review model has the following attributes:

- comment (text): The content of the review.
- user_id (integer): The ID of the user who wrote the review.
- movie_id (integer): The ID of the movie that the review is for.

## GENRE

- name (string): The name of the genre.
- description (string): The description of the genre.

## MOVIEGENRE

- movie_id (integer): The ID of the movie.
- genre_id (integer): The ID of the genre.

### ENDPOINTS
## Authentication
The API provides endpoints for user authentication:

- POST /users/signup: Creates a new user account.
- POST /users/login: Logs in a user into the application and returns an authentication token.
- DELETE /users/logout: Logs a user out of the application.
- DELETE /users/deactivate: Deactivates a user account.

## Movies
The API provides endpoints for managing movies:

- GET /movies: Returns a list of all movies in the database.
- GET /movies/:id: Returns the details of a specific movie.
- POST /movies/:id/like: Likes a specific movie.
- POST /movies/:id/dislike: Dislikes a specific movie.

## Genres
The API provides endpoints for managing genres:

- GET /genres: Returns a list of all genres in the database.
- GET /genres/:id/movies: Returns a list of all movies that belong to a specific genre.

## Reviews
The API provides endpoints for managing reviews:

- GET /movies/:movie_id/reviews': Returns a list of all reviews for a specific movie.
- POST /movies/:movie_id/reviews: Creates a new review for a specific movie.
- PATCH /users/:user_id/reviews/:id: Updates an existing review.
- DELETE /users/:user_id/reviews/:id: Deletes an existing review.

## LICENSE
This repository is distributed under the MIT License


## Author
This repository is created by:
https://github.com/Timothykagondu

- [Timothy Kagondu](https://github.com/Timothykagondu) 

 and maintained by:
 - [Vanessa Rukorio](https://github.com/Rukorio-Vanessa)
 - [Sumeya Haji](https://github.com/sumeyahajji)


