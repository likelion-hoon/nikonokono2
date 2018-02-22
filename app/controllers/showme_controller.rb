class ShowmeController < ApplicationController
  def board
    @posts = Post.all.order('id desc')
  end

  def board_write
    @post = Post.new
    @post.title = params[:title]
    @post.content = params[:content]
    @post.singer = params[:singer]
    @post.song = params[:song]

    @post.save

    redirect_to "/showme/board"
  end

  def board_write_form

  end

  def board_show
    @post = Post.find(params[:id])
  end
end
