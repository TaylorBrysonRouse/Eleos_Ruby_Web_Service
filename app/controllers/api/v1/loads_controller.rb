module Api
  module V1
    class LoadsController < ApplicationController
      def authorize(token)
        decoded_token = JWT.decode(token, nil, false);
        username = decoded_token[0]['http://schemas.xmlsoap.org/ws/2005/05/identity/claims/nameidentifier'];
        user = User.find_by_username(username)
        return user
      end

      def index
        eleos_platform_key = 'Idontknowyet' #env variable once hosted on heroku
        if request.headers["Eleos-Platform-Key"] != eleos_platform_key
          render body: '401: Invalid Platform Key'
        else
          if !authorize(request.headers["Authorization"].split("=")[1])
            render body: '401: Invalid User Token'
          else
            loads = Load.all()
            render json: loads
          end
        end
      end
    end
  end
end
