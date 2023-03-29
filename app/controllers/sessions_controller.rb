class SessionsController < ApplicationController
    def create
          user = User.find_by(email: params[:email])
          if user && user.authenticate(params[:password])
            token = SecureRandom.hex
            session = user.sessions.create(token: token)
            render json: { token: session.token }
          else
            render json: { error: 'Invalid email or password' }, status: :unauthorized
          end
        end
      def destroy
        session = Session.find_by(token: params[:token])
          if session
            session.destroy
            head :no_content
          else
            render json: { error: 'Invalid token' }, status: :unauthorized
          end
        end
      end
      
