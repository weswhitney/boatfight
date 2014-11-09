class GamesController < ApplicationController

  def index
    @games = Game.all
  end

  def new
    @game = Game.new
  end

  def create
    @game = Game.new(params.require(:game).permit(:user_id, :opponent_id, :winner ))
    @game.save
    redirect_to @game, notice: "Game was successfully created"
  end

  def show
    @game = Game.find(params[:id])
  end

  def edit
    @game = Game.find(params[:id])
  end

  def update
    @game = Game.find(params[:id])
    @game.update(params.require(:game).permit(:user_id, :opponent_id, :winner ))
    redirect_to @game, notice: "Game was successfully updated"
  end

  def destroy
    @game = Game.find(params[:id])
    @game = Game.destroy
    redirect_to @games, notice: "Game has been successfully deleted"
  end

end
