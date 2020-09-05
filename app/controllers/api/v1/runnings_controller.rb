# frozen_string_literal: true

module Api
  module V1
    class RunningsController < ActionController::API
      def index
        runnings = Running.select(:id, :place, :base_id, :go_counts, :reason)
        render json: runnings
      end

      def show
        running = Running.select(:id, :place, :base_id, :go_counts, :reason).find_by(id: params[:id])
        render json: running
      end

      def destroy
        running = Running.find_by(id: params[:id])
        render status: 200, json: { status: 200 } if running.destroy
      end
    end
  end
end
