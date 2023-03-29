class MovieGenresController < ApplicationController
    def create
        movie-genre = MovieGenre.create(movie_params) 
        if movie-genre
            response_template(status: :created, data: movie-genre)
        else
            response_template(status: :unprocessable_entity, data: movie-genre.errors, message: 'failed')
        end
    end
end
