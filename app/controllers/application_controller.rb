class ApplicationController < ActionController::API
    include ActionController::Cookies

    def response_template(message: 'success', status: 200, data: nil)
        render json: {message: message, data: data}, status: status
    end

    def save_user
        session[:uid] = id
        session[:expiry] = 8.hours.from_now
    end

    #delete a uid in session after 8 hrs
    def remove_user
        session.delete(:uid)
        session[:expiry] = Time.now
    end

    def session_expired?
        session[:expiry] ||= Time.now
        time_diff = ((session[:expiry]) - Time.now).to_i
        unless time_diff > 0
            response_template(message: 'failed', status: 401, data: { info: "You're session has expired. Please login again to continue"})
        end
    end
 

end