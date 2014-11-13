class BoardsController < ApplicationController

  def index
    @boards = Board.all
  end

  def new
    @board = Board.new
  end

  def create
    @board = Board.new(params.require(:board).permit(
    :type_of_ship,
    :start_x,
    :end_x,
    :start_y,
    :end_y,
    :hits
    ))
    @board.save
    redirect_to @board, notice: "Board was successfully created"
  end

  def show
    @board = Board.find(params[:id])
  end
end
