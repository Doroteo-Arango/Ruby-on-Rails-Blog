class ArticlesController < ApplicationController
	http_basic_authenticate_with name: 'dhh', password: 'secret', except: [:index, :show]

	def index
		# Fetch all articles from db
		@articles = Article.all
	end

	def show
		@article = Article.find(params[:id])
	end

	# The steps for creating a resource are handled by a controller's new & create actions
	def new
		# The new action instantiates a new article, but does not save it
		# By default, the view new.html.erb will be created
		@article = Article.new
	end

	def create
		@article = Article.new(title: "...", body: "...")

		# NB: 'redirect_to' - browser creates a new request
		# 'render' renders the specified view for the current request
		# It is important to use redirect_to after mutating the database or application state
		if @article.save
			redirect_to @article
		else
			render :new, status: :unprocessable_entity
		end
	end

	def edit
		@article = Article.find(params[:id])
	end

	def update
		@article = Article.find(params[:id])

		if @article.update(article_params)
			redirect_to @article
		else
			render :edit, status: :unprocessable_entity
		end
	end

	def destroy
		@article = Article.find(params[:id])
		@article.destroy

		# Redirect browser with 303 See Other status code
		redirect_to root_path, status: :see_other
	end

	private
	def article_params
		params.require(:article).permit(:title, :body, :status)
	end
end
