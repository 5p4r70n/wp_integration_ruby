class Api::V1::Message::MessageActionController < ApplicationController

    def index
        render json: { message: 'hi from whatsapp'}, status: :ok
        # render json: { message: 'all good, oy vey!' }, status: :ok

    end
end
