class ArticlesController < ApplicationController
    def show
        @article = Article.find(params[:id])
    end

    def index
        @article = Article.all
    end
    def create
        @article =Article.new(article_params)
        @article.save
        if(@article.errors.any?)
        render 'new'
        else    
        redirect_to @article
        #redirect_to article_path(@article)
        end
    end
    def new
        @article = Article.new
    end
    def edit

    end 

    def update
    end 
    def destroy

    end 
    private
    
    def article_params
      params.require(:article).permit(:title, :description)
    end
    
end