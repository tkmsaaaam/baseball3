# frozen_string_literal: true

module Api
  module V1
    class GamesController < ActionController::API
      def index
        games = Game.select(:id, :created_at)
        render json: games
      end

      def destroy
        game = Game.find_by(id: params[:id])
        render status: 200, json: { status: 200 } if game.destroy
      end
    end
  end
end

