class ArticlesController < ApplicationController
  def index
    @articles= Article.all #listando os articles
    #@ deixa ela publica para a view
  end
end
