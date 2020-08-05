class UsersController < ApplicationController
  def show
    @boards = Board.where(user_id: current_user.id).all
    @board = Board.where(user_id: current_user.id)
  end
end
