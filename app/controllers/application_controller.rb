class ApplicationController < ActionController::Base
    include ActionController::Cookies
    protect_from_forgery with: :null_session
    #skip_before_action :verify_authenticity_token, only: [:signup]

    rescue_from StandardError, with: :standard_error


    def response_template(message: 'success', status: 200, data: nil, **options)
        render json: { message: message, data: data }.merge(options), status: status
    end

    def save_user(id)
        session[:uid] = id
        session[:expiry] = 8.hours.from_now
    end


    #delete a uid in session after 8 hrs
    def delete_user_session
        session.delete(:uid)
        session[:expiry] = Time.now
    end

    def session_expired?
        session[:expiry] ||= Time.now
        time_diff = (Time.parse(session[:expiry]) - Time.now).to_i
        unless time_diff > 0
            response_template(message: 'failed', status: 401, data: { info: "You're session has expired. Please login again to continue"})
        end
    end

    def standard_error(exception)
        response_template(message: 'failed', data: { info: exception.message }, status: :unprocessable_entity)
    end
end