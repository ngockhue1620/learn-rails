class CommentsController < ApplicationController
  def index
    @comments = Comment.all
  end
  def create 
    @article = Article.find(params[:article_id])
    logger.debug @article.attributes.inspect
     
    @comment = @article.comments.create(comment_params)
    @c = Comment.new(article_id: params[:article_id], commenter: params[:commenter], body: params[:body] )
    @c.save
    logger.debug @comment.attributes.inspect
    
    byebug 
    redirect_to article_path(@article)
  end

  private
    def comment_params
      params.require(:comment).permit(:commenter, :body)
    end
end
