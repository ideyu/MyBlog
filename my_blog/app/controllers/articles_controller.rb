class ArticlesController < ApplicationController
  def index
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
    @article = Article.find(1)
  end
end
