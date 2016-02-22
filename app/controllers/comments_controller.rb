class CommentsController < ApplicationController
	before_action :authorise
	
	def create
		@article = Article.find params[:article_id]
		@comment = @article.comments.new(comment_params)
		@comment.user_id = @current_user.id
		@comment.save
			
			respond_to do |format|
				format.html {redirect_to @article}
			end
	end
	
	private
	def comment_params
		params.require(:comment).permit(:content, :article_id, :user_id, :stars)
	end
	
end
