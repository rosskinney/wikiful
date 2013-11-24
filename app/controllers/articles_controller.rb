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
  end

  def create
  end

end