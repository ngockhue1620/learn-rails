class HasCommentsController < ApplicationController
  def create
    @article = Article.find(params[:article_id])
    @has_comments = @article.has_comments.create(comment_params)
    redirect_to article_path(@article)
  end

  private
    def comment_params
      params.require(:has_comment).permit(:commenter, :body)
    end
end
