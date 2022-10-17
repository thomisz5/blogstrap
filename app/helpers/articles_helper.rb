module ArticlesHelper
  def time_stamp_articles(timestamp)
    timestamp.strftime('%B %e, %Y')
  end
end
