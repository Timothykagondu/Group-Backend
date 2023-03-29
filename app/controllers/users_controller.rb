class UsersController < ApplicationController
    before_action :set_user, only: [:index, :show, :create]
    before_action :authorize_user, only: [:index, :show, :create]
    def index
        user = User.all
        render json: user
    end

    def show 
        user = User.find(params[:id])
        render json: user
    end
    def create
        user = User.create(user_params)
        if user
            render json: user, status: :created
        else
            render json: {error: "User not found"}, status: :unprocessable_entity
        end
   end
  private

#   def set_user
#     user = User.find(params[:id])
#   end
def authorize_user
    unless user == current_user
      render json: { error: 'Not authorized' }, status: :unauthorized
    end
  end
end
    def user_params
        params.permit(:name, :email, :password, :password_confirmation)
    end
  

end
