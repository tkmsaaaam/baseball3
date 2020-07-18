class Api::V1::GamesController < ActionController::API
  def index
    @games = Game.all
  end

  def destroy
    game = Game.find_by(id: params[:id])
    render status: 200, json: { status: 200 } if game.destroy
  end
end
