class MoviesController < ApplicationController
    def index
        render json: Movie.all, status: :ok
    end
end
