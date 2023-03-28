class MoviesController < ApplicationController
    rescue_from ActiveRecord::RecordNotFound, with: :render_not_found_response

    def index
        render json: Movie.all, status: :ok
    end

    def show
        movie = find_movie
        render json: movie, status: :ok
    end

    def destroy
        movie = find_movie
        movie.destroy
        render json: {}, status: :no_content
    end

    def create
        movie = Movie.create(movie_params) 
        if movie.valid?
            render json: movie, status: :created
        else
            render json: { errors: ["validation errors"] }, status: :unprocessable_entity
        end
    end
    
    private
    def find_movie
        Movie.find(params[:id])
    end

    def render_not_found_response
        render json: { error: "Movie not found" }, status: :not_found
    end

    def movie_params
        params.permit(:title, :description, :year, :length, :image_url, :rating)
    end
end
