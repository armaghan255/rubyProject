class ArticlesController < ApplicationController

	http_basic_authenticate_with name: "Armaghan", password: "123",except: [:index,:show]
	def new
		session[:name] = "Armaghan Fazal"
		@article= Article.new
	end
	def edit
		@article = Article.find(params[:id])
	end
	def update
	  @article = Article.find(params[:id])

	  if @article.update(article_params)
	    redirect_to articles_path
	  else
	    render 'edit'
	  end
	end
	def index
			@articles = Article.all

  end

	def show
		@article = Article.find(params[:id])
  end

  def destroy
	  @article = Article.find(params[:id])
	  @article.destroy

	  redirect_to articles_path
	end

	def create

	  @article = Article.new(params.require(:article).permit(:title, :text))

	  if @article.save
	  	redirect_to articles_path
	  else
	  	render 'new'
	  end
	end

	def article_params
		params.require(:article).permit(:title, :text)
	end
end
