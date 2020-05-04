class Api::V1::SituationsController < ActionController::API
  def index
    @situations = Situation.all
  end

  def destroy
    situation = Situation.find_by(id: params[:id])
    if situation.destroy
      render status: 200, json: { status: 200 }
    end
  end
end
