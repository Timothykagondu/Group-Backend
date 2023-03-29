class ApplicationController < ActionController::Base

    rescue_from StandardError, with: :standard_error

    def response_template(message: 'success', status: 200, data: nil)
        render json: {
            message: message,
            data: data
        },  status: status
    end

    def standard_error(exception)
        response_template(message: 'failed', data: { info: exception.message }, status: :unprocessable_entity)
    end
end
