class MoviesController < ApplicationController
    rescue_from ActiveRecord::RecordNotFound, with: :render_not_found_response

    def index
        render json: Movie.all, status: :ok
    end

    def show
        movie = find_movie
        render json: movie, status: :ok
    end

    private
    def find_movie
        Movie.find(params[:id])
    end

    def render_not_found_response
        render json: { error: "Movie not found" }, status: :not_found
    end
end
