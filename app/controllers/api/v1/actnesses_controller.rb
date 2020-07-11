class Api::V1::ActnessesController < ActionController::API
  def index
    @actnesses = Actness.all
  end

  def destroy
    actness = Actness.find_by(id: params[:id])
    if actness.destroy
      render status: 200, json: { status: 200 }
    end
  end
end
