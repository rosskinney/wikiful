class ArticlesController < ApplicationController
  def index
    def index
      @articles = Article.order(updated_at: :desc).limit(25)
    end
  end

  def show
    def show
      @article = Article.find(params[:id])
    end
  end

  def new
    @article = Article.new
  end

  def create
    @article = Article.new(article_params)
    if @article.save
      redirect_to @article
    else
      render "new"
    end
  end

  private
  def article_params
    params.require(:article).permit(:title, :content, :category_ids => [])
  end
end