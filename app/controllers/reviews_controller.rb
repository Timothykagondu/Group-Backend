class ReviewsController < ApplicationController
  def create
      review = Review.new(review_params)
      if review.save
        render json: review, status: :created
      else
        render json: review.errors, status: :unprocessable_entity
      end
    end
 
  
    def destroy
      review.destroy
      head :no_content
    end
  
    private
    
    def review_params
      params.permit(:user_id, :movie_id, :comment)
    end
 
  end
  