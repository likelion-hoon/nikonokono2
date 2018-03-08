class ShowmeController < ApplicationController

  # showme 컨트롤러에 접속하려면 user를 인증받아야 한다.
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
    @post.user_id = current_user.id

    respond_to do |format|
      if @post.save
        format.html { redirect_to "/showme/board" }
      else
        format.html { render :board_write_form }
      end
    end
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

  # 추천수 구현 action
  def recommend
    @post = Post.find(params[:id])
    @post.recom = @post.recom + 1
    @post.save

    redirect_to action: "board_show", id: @post.id
  end

  # 댓글관련 action
  def reply_write
    @reply = Reply.new
    @reply.email = params[:reply_email]
    @reply.content = params[:reply_content]
    @reply.post_id = params[:id] # post_id값도 설정해 줘야 한다.

    if @reply.save
      redirect_to action: "board_show", id: params[:id]
    else # reply가 저장되지 않으면
      render :text => @reply.errors.messages[:title].first
    end
  end

  def reply_delete
    @reply = Reply.find(params[:reply_id])
    @reply.destroy

    redirect_to action: "board_show", id: @reply.post.id
  end

  # naver callback action
  def callbacak

  end

  # 시간을 한글 형식으로 리턴해주는 함수(board.erb에서 사용)
  def showDateInBoard(time)
    year = time.first(4)
    month = time[5..6]
    date = time[8..9]
    hour = time[11..12]

    s = year+'년 '+month+'월 '+date+'일 '+hour+'시 '
    return s
  end

  # 시간을 한글 형식으로 리턴해주는 함수(board_show에서 사용)
  def showDateTheOther(time)
    year = time.first(4)
    month = time[5..6]
    date = time[8..9]
    hour = time[11..12]
    minute = time[14..15]
    second = time[17..18]

    s = year+'년 '+month+'월 '+date+'일 '+hour+'시 '+minute+'분 '+second+'초'
    return s
  end

  # 사용할 메서드 정의
  helper_method :showDateInBoard, :showDateTheOther
end
