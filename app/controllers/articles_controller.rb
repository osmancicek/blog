class ArticlesController < ApplicationController
  def new
  @article = Article.new
end

def create
  
  @article = Article.new(article_params)

  if @article.save
    redirect_to @article
  else
    render 'new'
  end
end

public
  def article_params
    params.require(:article).permit(:title, :text)
  end



  def index
    @articles = Article.all
  end

  def show
    @article = Article.find(params[:id])
  end

  def new
  end

end
