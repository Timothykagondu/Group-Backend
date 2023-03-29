class ApplicationController < ActionController::Base
    include ActionController::Cookies
    rescue_from StandardError, with: :standard_error

    def response_template(message: 'success', status: 200, data: nil)
        render json: {message: message, data: data}, status: status
    end

    def save_user(id)
        session[:uid] = id
        session[:expiry] = 8.hours.from_now
    end

    def user
        User.find(@uid) 
    end

    def standard_error(exception)
        app_response(message: 'failed', data: { info: exception.message }, status: :unprocessable_entity)
    end

end
