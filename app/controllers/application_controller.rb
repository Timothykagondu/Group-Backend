class ApplicationController < ActionController::API


    def response_template(message: 'success', status: 200, data: nil)
        render json: {message: message, data: data}, status: status
    end

 

end