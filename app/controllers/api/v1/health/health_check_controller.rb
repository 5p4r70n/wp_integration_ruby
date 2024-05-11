class Api::V1::Health::HealthCheckController < ApplicationController

    def index
        render json: { message: 'all good, oy vey!' }, status: :ok
      end
end
