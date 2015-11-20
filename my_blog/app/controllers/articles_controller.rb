class ArticlesController < ApplicationController
  def index
    @articles = Article.all
  end

  def new
  end

  def create
    @params = Article.new(params.require(:article).permit(:author, :text))
    @params.save
    redirect_to @params
    #render plain: params[:article].inspect
  end

  def show
    @article = Article.find(params[:id])
  end
end
