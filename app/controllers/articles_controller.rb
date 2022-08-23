class ArticlesController < ApplicationController
  def index
    @articles= Article.all #listando os articles
    #@ deixa ela publica para a view
  end
  def show
    @article = Article.find(params[:id]) #cada article tem um id, passando como parametro no browser ele resgata
  end
end
