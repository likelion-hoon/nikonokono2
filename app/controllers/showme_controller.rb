class ShowmeController < ApplicationController
  before_action :authenticate_user!

  def board
    @posts = Post.all.order('id desc')
    @posts = Kaminari.paginate_array(@posts).page(params[:page])
  end

  def board_write
    @post = Post.new
    @post.title = params[:title]
    @post.content = params[:content]
    @post.singer = params[:singer]
    @post.song = params[:song]
    @post.user = current_user
    @post.save

    redirect_to "/showme/board"
  end

  def board_write_form

  end

  def board_show
    @post = Post.find(params[:id])
  end
end
