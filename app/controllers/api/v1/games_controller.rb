class Api::V1::GamesController < ActionController::API
  def index
    @games = Game.all
  end

  def destroy
    game = Game.find_by(id: params[:id])
    if game.destroy
      render status: 200, json: { status: 200 }
    end
  end
end
