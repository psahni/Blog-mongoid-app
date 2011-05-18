class CommentsController < ApplicationController
  
  def create
    @article = Article.find(params[:article_id])
    @comment = @article.comments.build(params[:comment])
    if @comment.save
      redirect_to @article, :notice => "Comment created!"
    else
      #render :action => article_path(@article )
      flash[:comment_error] = "Comment not created"
      redirect_to @article
    end
  end
end
