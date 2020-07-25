# frozen_string_literal: true

module Api
  module V1
    class ActnessesController < ActionController::API
      def index
        actnesses = Actness.select(:id, :ball_type, :swing, :ball, :strike, :foul, :ball_strike)
        render json: actnesses
      end

      def destroy
        actness = Actness.find_by(id: params[:id])
        render status: 200, json: { status: 200 } if actness.destroy
      end
    end
  end
end
