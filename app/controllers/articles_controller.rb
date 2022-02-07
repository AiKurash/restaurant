class ArticlesController < ApplicationController
  include Pundit
  before_action :set_article, only: [:show, :edit, :update, :destroy]
  before_action :require_user, except: [:show, :index]
  before_action :require_same_user, only: [:edit, :update, :destroy]

  rescue_from Pundit::NotAuthorizedError do
    redirect_to root_path, alert: "You aren't allowed to do that"
  end



  def show

  end

  def index
    @articles = Article.paginate(page: params[:page], per_page: 5)
    authorize @articles
  end

  def index1
    @q = Article.ransack(params[:q])
    @articles = @q.result(distinct: true)
  end

  def new
    @article = Article.new

  end

  def edit

  end

  def create
    @article = Article.new(article_params)
    authorize @article

    @article.user = current_user
    if @article.save
      flash[:notice] = "Article was created successfully."
      redirect_to @article
    else
      render 'new'
    end
  end


  def update

    if @article.update(article_params)
      flash[:notice] = "Article was updated successfully."
      redirect_to @article
    else
      render 'edit'
    end
  end

  def destroy
    @article.destroy
    redirect_to articles_path
 end

 private

 def set_article
   @article = Article.find(params[:id])
   authorize @article
 end

 def article_params
   params.require(:article).permit(:title, :description, category_ids: [])
 end

 def require_same_user
   if current_user != @article.user && !current_user.admin?
     flash[:alert] = "You can only edit or delete your own article"
     redirect_to @article
  end
end
end
