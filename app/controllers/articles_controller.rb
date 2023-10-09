class ArticlesController < ApplicationController
  def index
    @articles = Article.all
  end

  def new
    @article = Article.new
  end

  def edit
    @article = Article.find(params[:id])
  end

  def update
    @article = Article.find(params[:id])
    @article.body = params[:article][:body]
    @article.save

    redirect_to :articles
  end

  def create
    @article = Article.new(article_params)
    if @article.save
      redirect_to @article
    else
      render 'articles/new', status: :unprocessable_entity
    end
  end

  def show
    begin
      @article = Article.find(params[:id])
    rescue
      @error = "No Resource Found"
    end
  end

  private
    def article_params
      params.require(:article).permit(:title,:body)
    end
end
