# frozen_string_literal: true

class Api::V1::ActnessesController < ActionController::API
  def index
    @actnesses = Actness.all
  end

  def destroy
    actness = Actness.find_by(id: params[:id])
    render status: 200, json: { status: 200 } if actness.destroy
  end
end
