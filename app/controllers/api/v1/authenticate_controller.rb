module Api
  module V1
    class AuthenticateController < ApplicationController
      def show
        eleos_platform_key = 'Idontknowyet' #env variable once hosted on heroku
        if request.headers["Eleos-Platform-Key"] != eleos_platform_key
          render body: '401: Invalid Platform Key'
        else
          token = params[:jwt]
          decoded_token = JWT.decode(token, nil, false)
          user = User.find_by_username(decoded_token[0]['http://schemas.xmlsoap.org/ws/2005/05/identity/claims/nameidentifier'])
          render json: user
        end
      end
    end
  end
end
