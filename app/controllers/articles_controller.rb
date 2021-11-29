class ArticlesController < JwtController
    
    def index
        @articles = Article.all
        render json: { articles: @articles }
    end
    def new
        debugger
        @article = Article.new
    end
    def show
        # debugger
        @article = Article.find(params[:id])
        render json: { articles: @article }
    end
    def create
        # debugger
        @article = Article.create(article_params)
        render json: {articles: @article}
    end
    def edit
        @article = Article.find(params[:id])
        # render json: {articles: @article}
    end
    def update
        debugger
      @article = Article.find(params[:id])
      @article.update(article_params)
        render json: {articles: @article}
    end
    def destroy
        @article = Article.find(params[:id])
        @article.destroy
      end
    private
    def article_params 
        params.permit(:Title,:Description)
    end
end
