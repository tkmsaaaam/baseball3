class Api::V1::RunningsController < ActionController::API
  def index
    runnings = Running.select(:id, :place, :base_id, :go_counts, :reason)
    render json: runnings
  end

  def destroy
    running = Running.find_by(id: params[:id])
    if running.destroy
      render status: 200, json: { status: 200 }
    end
  end
end
