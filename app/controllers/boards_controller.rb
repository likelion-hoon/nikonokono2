class BoardsController < ApplicationController
  before_action :set_bulletin
  before_action :set_board, only: [:show, :edit, :update, :destroy]

  def index
    @boards = @bulletin.present? ? @bulletin.boards.all : board.all
  end

  def show
  end

  def new
    @board = @bulletin.present? ? @bulletin.boards.new : board.new
  end

  def edit
  end

  def create
    @board = @bulletin.present? ? @bulletin.boards.new(board_params) : board.new(board_params)

    respond_to do |format|
      if @board.save
        format.html { redirect_to (@bulletin.present? ? [@board.bulletin, @board] : @board), notice: 'board was successfully created.' }
        format.json { render :show, status: :created, location: @board }
      else
        format.html { render :new }
        format.json { render json: @board.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    respond_to do |format|
      if @board.update(board_params)
        format.html { redirect_to (@bulletin.present? ? [@board.bulletin, @board] : @board), notice: 'board was successfully updated.' }
        format.json { render :show, status: :ok, location: @board }
      else
        format.html { render :edit }
        format.json { render json: @board.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @board.destroy
    respond_to do |format|
      format.html { redirect_to (@bulletin.present? ? bulletin_boards_url : boards_url), notice: 'board was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
  def set_bulletin
    @bulletin = Bulletin.find(params[:bulletin_id]) if params[:bulletin_id].present?
  end

  def set_board
    if @bulletin.present?
      @board = @bulletin.boards.find(params[:id])
    else
      @board = board.find(params[:id])
    end
  end

  def board_params
    params.require(:board).permit(:title, :content)
  end
end
