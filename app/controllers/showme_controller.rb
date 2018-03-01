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
    @post.hit = @post.hit + 1
    @post.save
  end

  # 게시판 수정 처리 폼
  def board_update
    @post = Post.find(params[:id])
    @post.title = params[:update_title]
    @post.content = params[:update_content]
    @post.singer = params[:update_singer]
    @post.song = params[:update_song]
    @post.save

    redirect_to "/showme/board"
  end

  # 게시판 수정 폼
  def board_update_form
    @post = Post.find(params[:id])
  end

  def board_delete
    @post = Post.find(params[:id])
    @post.destroy
    redirect_to "/showme/board"
  end

  def showDatetime(time)
    year = time.first(4)
    month = time[5..6]
    date = time[8..9]
    hour = time[11..12]
    minute = time[14..15]

    s = year+'년 '+month+'월 '+date+'일 '+hour+'시 '
    return s
  end

  # 사용할 메서드 정의
  helper_method :showDatetime
end
