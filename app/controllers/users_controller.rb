class UsersController < ApplicationController
    before_action :session_expired?, only: [:confirm_login_status]

    def signup
        user = User.create(user_params)
        if user.valid?
            save_user(id: user.id)
            response_template(message: 'Registration was successful!', status: :created, data: user)
        else
            response_template(message: 'Error occured during registration', status: :unprocessable_entity, data: user.errors)
        end
    end

    def confirm_login_status
        response_template(message: 'Success', status: :ok)
    end

    def login
        sql = "name = :name OR email = :email"
        user = User.where(sql, { name: user_params[:name], email: user_params[:email] }).first
        if user&.authenticate(user_params[:password])
            save_user(id: user.id)
            response_template(message: 'Login was successful', status: :ok, data: user)
        else
            response_template(message: 'Invalid username/email or password', status: :unauthorized)
        end
    end

    def logout
        delete_user_session
        response_template(message: "You have successfully logged out")
    end

    def deactivate
        current_user.destroy
        response_template(message: "Your account has been deleted.")
    end
    
    private
    def user_params
        params.permit(:name, :email, :password)
    end
    
    end
    