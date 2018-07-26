class ApplicationController < ActionController::API
  include ActionController::HttpAuthentication::Token::ControllerMethods

  # before_action :authenticate

   private

  # def _current_user
       
  #   authenticate_or_request_with_http_token do |jwt_token|  
  #     # user_id = decode(jwt_token)[0]["user_id"]
  #     # User.find(user_id)
  #     begin
  #       user_id = decode(jwt_token)[0]["user_id"]
  #       User.find(user_id)
  #     rescue JWT::VerificationError
  #       # raise ActionController::InvalidAuthenticityToken
  #       return nil
  #     end
  #   end
  # end

  def authenticate
       
    authenticate_or_request_with_http_token do |jwt_token|  
      # user_id = decode(jwt_token)[0]["user_id"]
      # User.find(user_id)
      begin
        user_id = decode(jwt_token)[0]["user_id"]
        User.find(user_id)
      rescue JWT::VerificationError
        puts "Failed to verify token"
        raise ActionController::InvalidAuthenticityToken
        return nil
      end
    end
  end

  def _current_user 
    @current_user ||= authenticate
  end




    def encode(payload)
        secret = 'my$ecretK3y'
        JWT.encode(payload, secret, 'HS256')
    end

    # it will raise an error if the token is not valid
    def decode(encrypted_token)
        secret = 'my$ecretK3y'
        JWT.decode(encrypted_token, secret, true, {algorithm: 'HS256' })
    end

end
