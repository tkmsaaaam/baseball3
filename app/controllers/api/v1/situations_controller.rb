# frozen_string_literal: true

module Api
  module V1
    class SituationsController < ActionController::API
      def index
        situations = Situation.select(:game_id, :bat_counts, :inings, :actness_results, :where_go, :ball_counts,
                                      :ball_strike, :steal_counts, :score)
        render json: situations
      end

      def destroy
        situation = Situation.find_by(id: params[:id])
        render status: 200, json: { status: 200 } if situation.destroy
      end
    end
  end
end
