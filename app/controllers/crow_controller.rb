class CrowController < ApplicationController
  def step
    crow = Crow.find params[:id]
    crow.step
    if crow.save
      redirect_to game_path
    else
      game = Game.find params[:id]
      game.status = "loose"
      game.save
      redirect_to game_path
    end
  end

  private

  def step_params
    params.permit :id
  end
end
