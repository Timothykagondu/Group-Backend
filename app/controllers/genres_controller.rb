class GenresController < ApplicationController
    rescue_from ActiveRecord::RecordNotFound, with: :render_not_found_response

    def index
        render json: Genre.all, status: :ok
    end

    def show
        genre = find_genre
        render json: genre, status: :ok
    end

    private
    def find_genre
        Genre.find(params[:id])
    end

    def render_not_found_response
        render json: { error: "Genre not found" }, status: :not_found
    end
end
