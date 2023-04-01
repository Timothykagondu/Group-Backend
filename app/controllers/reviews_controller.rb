class ReviewsController < ApplicationController

  #skip_before_action :verify_authenticity_token

  def index
    movie = Movie.find(params[:movie_id])
    reviews = movie.reviews
    render json: reviews
  end

  def create
    movie = Movie.find(params[:movie_id])
    review = current_user.reviews.build(review_params)
    review.movie = movie
    if review.save
        render json: review, status: :created
    else
        render json: {errors: review.errors.full_messages }, status: :unprocessable_entity
    end
  end
 
  
  
  private
  def review_params
      params.permit(:user_id, :movie_id, :comment)
  end
 
  end
  