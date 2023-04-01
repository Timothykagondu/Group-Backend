class MoviesController < ApplicationController
    #rescue_from ActiveRecord::RecordNotFound, with: :render_not_found_response

    #skip_before_action :verify_authenticity_token
    def index
        render json: Movie.all, status: :ok
    end

    def show
        movie = find_movie
        reviews = movie.reviews.as_json(except: [:created_at, :updated_at])
        render json: { movie: movie.as_json(except: [:created_at, :updated_at]), reviews: reviews }, status: :ok
    end

    def destroy
        movie = find_movie
        movie.destroy
        response_template(message: 'success', data: { info: 'Movie successfully deleted!' }, status: 204)
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

    def update
        movie = Movie.find(params[:id])
        if movie.update(movie_params)
          response_template(message: 'Movie successfully updated', data: movie)
        else
          response_template(status: :unprocessable_entity, data: movie.errors, message: 'Failed to update movie')
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
