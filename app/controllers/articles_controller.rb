class ArticlesController < ApplicationController
  #criação das actions
  def index
    @articles = Article.all #listando os articles
    #@ deixa ela publica para a view
  end

  def show
    @article = Article.find(params[:id]) #cada article tem um id, passando como parametro no browser ele resgata
  end

  def new
    @article = Article.new
  end

  def create
    @article = Article.new(article_params)

    if @article.save
      redirect_to @article
    else
      render :new
    end
  end

  def edit
    @article = Article.find(params[:id])
  end

  def update
    @article = Article.find(params[:id])

    if @article.update(article_params)
      redirect_to @article
    else
      render :edit
    end
  end

  private

  def article_params
    params.require(:article).permit(:title, :body)
    #permitindo somente o preenchimento dos campos com title e body
  end
end
