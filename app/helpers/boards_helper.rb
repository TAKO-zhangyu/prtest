module BoardsHelper

  def youtube_link
    p (@board.url).last(11)
  end
end
