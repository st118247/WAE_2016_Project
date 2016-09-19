class Basics1Controller < ApplicationController
  def index
  end

  def top_ten_youtube
    doc = Nokogiri::HTML(open("https://www.youtube.com/feed/trending"), nil, "UTF-8")
    @links = doc.css("ul.has-multiple-items h3.yt-lockup-title [@dir='ltr']")
    @pics = doc.css("ul.has-multiple-items span.yt-thumb-simple img")
    render 'top-ten-youtube'
  end

  def divide_by_zero
    #can see in production.log
    logger.info "About divided by 0: Can not use."


    #can see in production.log
    @answer = 1/0
  end
end
