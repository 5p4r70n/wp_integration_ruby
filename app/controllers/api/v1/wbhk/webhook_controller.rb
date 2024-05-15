class Api::V1::Wbhk::WebhookController < ApplicationController

    def index
        
        render json: { message: 'hi from webhook'}, status: :ok
    end

end
