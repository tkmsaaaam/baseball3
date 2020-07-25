# frozen_string_literal: true

class Api::V1::RunningsController < ActionController::API
  def index
    @runnings = Running.all
  end

  def destroy
    running = Running.find_by(id: params[:id])
    render status: 200, json: { status: 200 } if running.destroy
  end
end
