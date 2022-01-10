module Api
  module V1
    class MessagesController < ApplicationController
      def new
        eleos_platform_key = 'Idontknowyet' #env variable once hosted on heroku
        if request.headers["Eleos-Platform-Key"] != eleos_platform_key
          render body: '401: Invalid Platform Key'
        else
          @message = Message.new(message_params)

          if @message.save!
            render json: params[:handle]
          end


        end
      end

      private
      #see if chaning :message to request.body changes anything
        def message_params
          params.require(:message).permit(:direction, :username, :message_type, :body, :composed_at, :platform_received_at, )
        end

    end
  end
end
