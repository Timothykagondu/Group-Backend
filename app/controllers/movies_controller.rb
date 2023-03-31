class MoviesController < ApplicationController
    #rescue_from ActiveRecord::RecordNotFound, with: :render_not_found_response

    def index
        render json: Movie.all, status: :ok
    end

    def show
        movie = find_movie
        reviews = movie.reviews
        render json: { movie: movie, reviews: reviews }, status: :ok
    end

    def destroy
        movie = find_movie
        movie.destroy
        response_template(message: 'success', data: { info: 'Movie successfilly deleted!' }, status: 204)
    end

    def create
        genre = Genre.find(params[:genre_id])
        movie = Movie.create(movie_params) 
        movie.genres << genre
        if movie.valid?
            response_template(status: :created, data: movie)
        else
            response_template(status: :unprocessable_entity, data: movie.errors, message: 'failed')
        end
    end
    
    #update likes
    def like
        movie = find_movie
        movie.update(rating: true)
        redirect_to movie
      end
    
    #update likes
    def dislike
        movie = find_movie
        movie.update(rating: false)
        redirect_to movie
    end
    
    private
    def find_movie
        Movie.find(params[:id])
    end

    def movie_params
        params.permit(:title, :description, :year, :length, :image_url, :rating)
    end
end
