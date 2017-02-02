class GamesController < ApplicationController
  def index
    @games = Game.of_user current_user
  end

  def show
    @game = Game.find params[:id]
  end

  def set_status_to_win
    game = Game.find params[:id]
    game.status = "win"
    game.save
    redirect_to game_path(params[:id])
  end

  def set_status_to_lost
    game = Game.find params[:id]
    game.status = "loose"
    game.save
    redirect_to game_path
  end
end
