class Api::V1::Wbhk::WebhookController < ApplicationController

    def index
        print params
        render json: { message: 'hi from webhook'}, status: :ok
    end
end
