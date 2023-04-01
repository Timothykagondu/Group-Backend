class ReviewsController < ApplicationController

  skip_before_action :verify_authenticity_token

  def index
    movie = Movie.find(params[:movie_id])
    reviews = movie.reviews
    render json: reviews
  end


  
def create
  movie = Movie.find(params[:movie_id])
  review = Review.new(review_params.merge(movie: movie))
  if review.save
    render json: review, status: :created
  else
    render json: { errors: review.errors.full_messages }, status: :unprocessable_entity
  end
end

# def update
#   review = Review.find_by(id: params[:id], user_id: params[:user_id])
#   if review
#     if review.update(review_params)
#       render json: review, status: :ok
#     else
#       render json: {errors: review.errors.full_messages}, status: :unprocessable_entity
#     end
#   else
#     render json: {errors: "Review not found or you do not have permission to edit this review."}, status: :not_found
#   end
# end

def update
  review = Review.find_by(id: params[:id], user_id: params[:user_id])
  if review
    if review.update(review_params)
      render json: review, status: :ok
    else
      render json: {errors: review.errors.full_messages}, status: :unprocessable_entity
    end
  else
    render json: {errors: "Review with ID #{params[:id]} not found for user with ID #{params[:user_id]} or you do not have permission to edit this review."}, status: :not_found
  end
end

def destroy
  review = Review.find_by(id: params[:id], user_id: params[:user_id])
  review.destroy
  head :no_content
end

private
def review_params
  params.require(:review).permit(:comment).merge(user_id: params[:user_id])
end
  

 # private


  # def review_params
  #     params.permit(:user_id, :movie_id, :comment)
  # end
 
end
  