class GenresController < ApplicationController
   # rescue_from ActiveRecord::RecordNotFound, with: :render_not_found_response

    def index
        render json: Genre.all, status: :ok
    end

    def show
        genre = find_genre
        movies = genre.movies
        response_template( status: :created, data: movies), include: :genres
    end
       

    private
    def find_genre
        Genre.find(params[:id])
    end

    
end
