class Api::V1::Message::MessageActionController < ApplicationController

    def index
        render json: { message: 'hi from whatsapp'}, status: :ok
    end
    
end
