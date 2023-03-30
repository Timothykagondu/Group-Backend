class UsersController < ApplicationController
    # before_action :session_expired?, only: [:check_login_status]

    def signup
        user = User.create(user_params)
        if user.valid?
            response_template(message: 'Registration was successful!', status: :created, data: user)
        else
            response_template(message: 'Error occured during registration', status: :unprocessable_entity, data: user.errors)
        end
    end

    def login
        sql = "username = :username OR email = :email"
        user = User.where(sql, { name: user_params[:name], email: user_params[:email] }).first
        if user&.authenticate(user_params[:password])
            save_user(id: user.id)
            response_template(message: 'Login was successful', status: :ok, data: user)
        else
            response_template(message: 'Invalid username/email or password', status: :unauthorized)
        end
    end

    private
    def user_params
        params.permit(:name, :email, :password)
    end
    end
    