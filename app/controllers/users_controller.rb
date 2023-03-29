class UsersController < ApplicationController
    # before_action :session_expired?, only: [:check_login_status]

    def signup
        user = User.create(user_params)
        if user.valid?
            save_user(user.id)
            response_template(message: 'Registration was successful!', status: :created, data: user)
        else
            response_template(message: 'Error occured during registration', status: :unprocessable_entity, data: user.errors)
        end
    end

    private
    def user_params
        params.permit(:name, :email, :password)
    end
    end
    