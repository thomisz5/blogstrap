class ArticlesController < ApplicationController
  before_action :set_article, only: [:show, :edit, :destroy, :update]

  #criação das actions
  def index
    current_page = (params[:page] || 1).to_i
    @articles = Article.order(created_at: :desc).page(current_page).per(2)
    #listando os articles
    #@ deixa ela publica para a view
  end

  def show
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
  end

  def update
    if @article.update(article_params)
      redirect_to @article
    else
      render :edit
    end
  end

  def destroy
    @article.destroy

    redirect_to root_path
  end

  private

  def article_params
    params.require(:article).permit(:title, :body)
    #permitindo somente o preenchimento dos campos com title e body
  end

  def set_article #listagem dos articles
    @article = Article.find(params[:id])
  end
end
