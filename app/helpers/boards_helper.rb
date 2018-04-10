module BoardsHelper
  def sendBulletin num
    @boards = Bulletin.find(num).boards.order("created_at desc").limit(5)
  end
end
