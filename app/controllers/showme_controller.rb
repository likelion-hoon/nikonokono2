class ShowmeController < ApplicationController

  # showme 컨트롤러에 접속하려면 user를 인증받아야 한다.
  before_action :authenticate_user!
  before_action :set_post, only: [:show, :edit, :update, :destroy]
  before_action :log_impression, only: [:show]

  def index
    if params[:search]
      @posts = Post.search(params[:search]).order('created_at asc')
    else
      @posts = Post.with_deleted.all.order("id desc")
    end
    @posts = Kaminari.paginate_array(@posts).page(params[:page])
  end

  def new
    @post = Post.new
  end

  def create
    @post = Post.new(post_params)
    @post.user_id = current_user.id

    respond_to do |format|
      if @post.save
        format.html { redirect_to posts_path }
      else
        format.html { render :new }
      end
    end
  end

  def show
  end

  # 게시판 수정 폼
  def edit
  end

  def update
    @post.update(post_params)
    redirect_to posts_path
  end

  def destroy
    @post.destroy
    redirect_to posts_path
  end

  # 추천수 구현 action
  def recommend
    @recoms = Recommend.all

    bool = 0
    # 추천한 글인지 검사
    @recoms.each do |r|
       if r.email.to_s == current_user.email.to_s && r.pid.to_i == params[:id].to_i
         bool = 1
       end
    end

    if bool == 0
      @recom = Recommend.new
      @recom.email = current_user.email
      @recom.pid = params[:id]
      @post = Post.find(params[:id])
      @post.recom = @post.recom + 1
      @post.save
      @recom.save
      redirect_to action: "show", id: params[:id]
    else
      redirect_to action: "show", id: params[:id]
    end
  end

  # 댓글관련 action
  def reply_write
    @reply = Reply.new
    @reply.email = params[:reply_email]
    @reply.content = params[:reply_content]
    @reply.post_id = params[:id] # post_id값도 설정해 줘야 한다.

    if @reply.save
      redirect_to action: "show", id: params[:id]
    else # reply가 저장되지 않으면
      render :plain => @reply.errors.messages[:title].first
    end
  end

  def reply_delete
    @reply = Reply.find(params[:reply_id])
    @reply.destroy

    redirect_to action: "show", id: @reply.post.id
  end

  # 조회수 액션
  def log_impression
   @hit_post = Post.find(params[:id])
   @hit_post.impressions.create(ip_address: request.remote_ip, user_id:current_user.id)
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

  private
    def set_post
      @post = Post.find(params[:id])
    end

    def post_params
      params.permit(:title,:content,:singer,:song)
    end
end
