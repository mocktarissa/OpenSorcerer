class ArticlesController < ApplicationController
    def show
        @article = Article.find(params[:id])
    end

    def index
        @article = Article.all
    end
    def create
        
    end
    def new
        @article= Article.new(params[:article])
    end

    
end