class BoardsController < ApplicationController
  before_action :correct_user, only: %i[edit destroy]

  def index
    @boards = Board.includes(:user)
  end

  def new
    @board = Board.new
  end

  def create
    board = current_user.boards.create!(board_params)
    redirect_to boards_path
  end

  def show
    @board = Board.find(params[:id])
  end

  def edit
  end

  def update
    board = Board.find(params[:id])
    board.update(board_params)
    redirect_to boards_path
  end

  def destroy
    Board.destroy(params[:id])
    redirect_to boards_path
  end

  private

  def board_params
     params.require(:board).permit(:name, :title, :body, :url)
  end

  def correct_user
    @board = current_user.boards.find_by(id: params[:id])
    redirect_to boards_path if @board.nil?
  end
end
